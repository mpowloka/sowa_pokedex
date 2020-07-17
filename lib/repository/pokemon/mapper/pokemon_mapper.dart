import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';

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
}
