import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonType extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get typeName => text()();
}
