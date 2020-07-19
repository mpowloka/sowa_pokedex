import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sowa_pokedex/moor/pokemon/dao.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';

import 'mapper/pokemon_type_mapper.dart';

const _pokemonBatchSize = 10;

@lazySingleton
class PokemonRepository {
  final FetchPokemonBatch _fetchPokemonBatch;
  final FetchPokemonDetails _fetchPokemonDetails;
  final PokemonMapper _pokemonMapper;
  final PokemonStatMapper _pokemonStatMapper;
  final PokemonTypeMapper _pokemonTypeMapper;
  final PokemonDao _pokemonDao;

  PokemonRepository(
    this._fetchPokemonBatch,
    this._pokemonDao,
    this._fetchPokemonDetails,
    this._pokemonMapper,
    this._pokemonStatMapper,
    this._pokemonTypeMapper,
  );

  Stream<List<Pokemon>> watchPokemonList() {
    return _pokemonDao.watchPokemonBundleList().map((pokemonBundleList) {
      return pokemonBundleList.map((pokemonBundle) {
        return _pokemonMapper.databaseToDomain(pokemonBundle);
      }).toList();
    });
  }

  void fetchPokemonBatch() async {
    final offset = await _pokemonDao.getPokemonCount();
    final result = await _fetchPokemonBatch.fetch(_pokemonBatchSize, offset);

    result.fold(
      (pokemonBatch) async {
        Logger().i('Pokemon batch fetched: $pokemonBatch');
        for (final result in pokemonBatch.results) {
          await _downloadPokemonDetails(result);
        }
      },
      (networkError) {
        Logger().e('Failed to fetch Pokemon batch: $networkError');
      },
    );
  }

  Future<void> _downloadPokemonDetails(
    final NetworkPokemonShortInfo shortInfo,
  ) async {
    final result = await _fetchPokemonDetails.fetch(shortInfo.name);

    result.fold(
      (pokemonDetails) async {
        Logger().i('Pokemon details fetched: $pokemonDetails');
        await _persistPokemonDetails(pokemonDetails);
      },
      (networkError) {
        Logger().e('Failed to fetch Pokemon details: $networkError');
      },
    );
  }

  Future _persistPokemonDetails(PokemonDetailsResponse pokemonDetails) async {
    final pokemonId = await _pokemonDao.insertOrReplacePokemon(
      _pokemonMapper.networkToDatabase(pokemonDetails),
    );
    for (final stat in pokemonDetails.stats) {
      final statId = await _pokemonDao.insertOrReplacePokemonStat(
          _pokemonStatMapper.networkToDatabase(stat));
      Logger().d('Inserted pokemonStat: $stat');
      await _pokemonDao.linkPokemonWithStat(pokemonId, statId);
      Logger().d(
        'Linked pokemonStat $stat with pokemonId: $pokemonId (pokemonName = ${pokemonDetails.name})',
      );
    }
    for (final type in pokemonDetails.types) {
      final typeId = await _pokemonDao.insertOrReplacePokemonType(
          _pokemonTypeMapper.networkToDatabase(type));
      Logger().d('Inserted pokemonType: $type');
      await _pokemonDao.linkPokemonWithType(pokemonId, typeId);
      Logger().d(
        'Linked pokemonType $type with pokemonId: $pokemonId (pokemonName = ${pokemonDetails.name})',
      );
    }
  }
}
