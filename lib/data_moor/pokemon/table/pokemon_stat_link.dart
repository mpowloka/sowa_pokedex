import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonStatLink extends Table {
  IntColumn get pokemonId => integer()();

  IntColumn get statId => integer()();
}