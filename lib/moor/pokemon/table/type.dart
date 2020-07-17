import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonType extends Table {
  IntColumn get id => integer()();

  TextColumn get typeName => text()();
}
