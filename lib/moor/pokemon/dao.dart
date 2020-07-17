import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon_stat_link.dart';
import 'package:sowa_pokedex/moor/pokemon/table/pokemon_type_link.dart';
import 'package:sowa_pokedex/moor/pokemon/table/stat.dart';
import 'package:sowa_pokedex/moor/pokemon/table/type.dart';

part 'dao.g.dart';

@lazySingleton
@UseDao(tables: [
  MoorPokemon,
  MoorPokemonStat,
  MoorPokemonType,
  MoorPokemonStatLink,
  MoorPokemonTypeLink,
])
class PokemonDao extends DatabaseAccessor<PokemonDatabase>
    with _$PokemonDaoMixin {
  PokemonDao(final PokemonDatabase attachedDatabase) : super(attachedDatabase);

  Future<int> getPokemonCount() async =>
      (await select(moorPokemon).get()).length;

  Stream<List<MoorPokemonData>> watchPokemonList() {
    return select(moorPokemon).watch();
  }

  Stream<List<MoorPokemonTypeData>> watchPokemonTypesList() {
    return select(moorPokemonType).watch();
  }

  Stream<List<MoorPokemonStatData>> watchPokemonStatList() {
    return select(moorPokemonStat).watch();
  }

  Stream<List<MoorPokemonTypeLinkData>> watchPokemonTypeLinksList() {
    return select(moorPokemonTypeLink).watch();
  }

  Stream<List<MoorPokemonStatLinkData>> watchPokemonStatLinkList() {
    return select(moorPokemonStatLink).watch();
  }

  Future<void> insertPokemon(final Insertable<MoorPokemonData> pokemon) async {
    into(moorPokemon).insert(pokemon);
  }

  Future<void> insertPokemonType(
    final Insertable<MoorPokemonTypeData> type,
  ) async {
    into(moorPokemonType).insert(type);
  }

  Future<void> insertPokemonStat(
    final Insertable<MoorPokemonStatData> stat,
  ) async {
    into(moorPokemonStat).insert(stat);
  }

  Future<void> linkPokemonWithType(
    final int pokemonId,
    final int typeId,
  ) async {
    into(moorPokemonTypeLink).insert(MoorPokemonTypeLinkCompanion(
      pokemonId: Value(pokemonId),
      typeId: Value(typeId),
    ));
  }

  Future<void> linkPokemonWithStat(
    final int pokemonId,
    final int statId,
  ) async {
    into(moorPokemonStatLink).insert(MoorPokemonStatLinkCompanion(
      pokemonId: Value(pokemonId),
      statId: Value(statId),
    ));
  }
}
