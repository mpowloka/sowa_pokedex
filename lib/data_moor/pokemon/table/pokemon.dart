import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemon extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  IntColumn get exp => integer()();

  IntColumn get weight => integer()();

  IntColumn get height => integer()();

  TextColumn get sprite => text()();
}
