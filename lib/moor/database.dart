import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/pokemon/dao.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon_stat_link.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon_type_link.dart';
import 'package:sowa_pokedex/moor/pokemon/table/stat.dart';
import 'package:sowa_pokedex/moor/pokemon/table/type.dart';

part 'database.g.dart';

@lazySingleton
@UseMoor(tables: [
  MoorPokemon,
  MoorPokemonStat,
  MoorPokemonType,
  MoorPokemonStatLink,
  MoorPokemonTypeLink,
], daos: [
  PokemonDao,
])
class PokemonDatabase extends _$PokemonDatabase {
  PokemonDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(
    path: 'pokemon_database.sqlite', logStatements: true,));

  @override
  int get schemaVersion => 1;
}
