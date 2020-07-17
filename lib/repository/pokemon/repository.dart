import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sowa_pokedex/moor/pokemon/dao.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_batch.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/pokemon.dart';

@lazySingleton
class PokemonRepository {
  final FetchPokemonBatch _fetchPokemonBatch;
  final FetchPokemonDetails _fetchPokemonDetails;
  final PokemonMapper _pokemonMapper;
  final PokemonDao _pokemonDao;

  PokemonRepository(
    this._fetchPokemonBatch,
    this._pokemonDao,
    this._fetchPokemonDetails,
    this._pokemonMapper,
  );

  Stream<List<Pokemon>> watchPokemonList() {
    return _pokemonDao
        .watchPokemonList()
        .map((event) => event.map((e) => Pokemon(e.name)).toList());
  }

  void fetchPokemonBatch() async {
    final offset = await _pokemonDao.getPokemonCount();
    final result = await _fetchPokemonBatch.fetch(10, offset);

    result.fold(
      (pokemonBatch) {
        Logger().i('Pokemon batch fetched: $pokemonBatch');
        pokemonBatch.results.forEach(_downloadPokemonDetails);
      },
      (networkError) {
        Logger().e('Failed to fetch Pokemon batch: $networkError');
      },
    );
  }

  void _downloadPokemonDetails(
    final NetworkPokemonShortInfo shortInfo,
  ) async {
    final result = await _fetchPokemonDetails.fetch(shortInfo.name);

    result.fold(
      (pokemonDetails) {
        Logger().i('Pokemon batch fetched: $pokemonDetails');
        _pokemonDao.insertPokemon(
          _pokemonMapper.networkToDatabase(pokemonDetails),
        );
      },
      (networkError) {
        Logger().e('Failed to fetch Pokemon details: $networkError');
      },
    );
  }
}
