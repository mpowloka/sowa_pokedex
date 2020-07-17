import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonTypeLink extends Table {
  IntColumn get pokemonId => integer()();

  IntColumn get typeId => integer()();
}