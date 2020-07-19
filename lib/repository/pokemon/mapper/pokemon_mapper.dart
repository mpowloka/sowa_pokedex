import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/moor/pokemon/pokemon_bundle.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/repository/pokemon/type_color_resolver.dart';

@lazySingleton
class PokemonMapper {
  final PokemonStatMapper _pokemonStatMapper;
  final PokemonTypeMapper _pokemonTypeMapper;
  final PokemonTypeColorResolver _pokemonTypeColorResolver;

  PokemonMapper(
    this._pokemonStatMapper,
    this._pokemonTypeMapper,
    this._pokemonTypeColorResolver,
  );

  MoorPokemonCompanion networkToDatabase(
    final PokemonDetailsResponse networkResponse,
  ) {
    return MoorPokemonCompanion(
      id: Value(networkResponse.id),
      name: Value(networkResponse.name),
      exp: Value(networkResponse.exp),
      weight: Value(networkResponse.weight),
      height: Value(networkResponse.height),
      sprite: Value(networkResponse.sprites.frontSprite),
    );
  }

  Pokemon databaseToDomain(final MoorPokemonBundle moorPokemonBundle) {
    final types = moorPokemonBundle.typesData
            ?.map(_pokemonTypeMapper.databaseToDomain)
            ?.toList() ??
        [];

    return Pokemon(
      moorPokemonBundle.pokemonData.id,
      moorPokemonBundle.pokemonData.exp,
      moorPokemonBundle.pokemonData.height,
      moorPokemonBundle.pokemonData.weight,
      moorPokemonBundle.pokemonData.name,
      moorPokemonBundle.pokemonData.sprite,
      moorPokemonBundle.statsData
              ?.map(_pokemonStatMapper.databaseToDomain)
              ?.toList() ??
          [],
      types,
      types.isNotEmpty
          ? types.first.color
          : _pokemonTypeColorResolver.defaultColor,
    );
  }
}
