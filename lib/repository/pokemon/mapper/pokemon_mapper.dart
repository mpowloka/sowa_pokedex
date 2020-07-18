import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/moor/pokemon/pokemon_bundle.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon_stat.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon_type.dart';

@lazySingleton
class PokemonMapper {
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
    return Pokemon(
      moorPokemonBundle.pokemonData.id,
      moorPokemonBundle.pokemonData.exp,
      moorPokemonBundle.pokemonData.height,
      moorPokemonBundle.pokemonData.weight,
      moorPokemonBundle.pokemonData.name,
      moorPokemonBundle.pokemonData.sprite,
      moorPokemonBundle.statsData
          ?.map((stat) => PokemonStat(stat.id, stat.statName, stat.value))
          ?.toList() ?? [],
      moorPokemonBundle.typesData
          ?.map((type) => PokemonType(type.id, type.typeName))
          ?.toList() ?? [],
    );
  }
}
