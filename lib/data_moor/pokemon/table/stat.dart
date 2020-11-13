import 'package:moor_flutter/moor_flutter.dart';

class MoorPokemonStat extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get statName => text()();

  IntColumn get value => integer()();
}
