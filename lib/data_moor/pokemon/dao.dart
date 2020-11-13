import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sowa_pokedex/data_moor/database.dart';
import 'package:sowa_pokedex/data_moor/pokemon/pokemon_bundle.dart';
import 'package:sowa_pokedex/data_moor/pokemon/table/pokemon.dart';
import 'package:sowa_pokedex/data_moor/pokemon/table/pokemon_stat_link.dart';
import 'package:sowa_pokedex/data_moor/pokemon/table/pokemon_type_link.dart';
import 'package:sowa_pokedex/data_moor/pokemon/table/stat.dart';
import 'package:sowa_pokedex/data_moor/pokemon/table/type.dart';

part 'dao.g.dart';

@injectable
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

  Stream<int> watchPokemonCount() {
    return select(moorPokemon).watch().map((pokemonList) => pokemonList.length);
  }

  Stream<List<MoorPokemonBundle>> watchPokemonBundleList() {
    final pokemonStream = select(moorPokemon).watch();

    return pokemonStream.switchMap((pokemonList) {
      final idToPokemonMap = {
        for (var pokemon in pokemonList) pokemon.id: pokemon
      };
      final ids = idToPokemonMap.keys;

      final typesQuery = select(moorPokemonTypeLink).join([
        innerJoin(
          moorPokemonType,
          moorPokemonType.id.equalsExp(moorPokemonTypeLink.typeId),
        )
      ])
        ..where(moorPokemonTypeLink.pokemonId.isIn(ids));

      final statsQuery = select(moorPokemonStatLink).join([
        innerJoin(
          moorPokemonStat,
          moorPokemonStat.id.equalsExp(moorPokemonStatLink.statId),
        )
      ])
        ..where(moorPokemonStatLink.pokemonId.isIn(ids));

      return CombineLatestStream.combine2(
        typesQuery.watch(),
        statsQuery.watch(),
        (List<TypedResult> typeRows, List<TypedResult> statRows) {
          final pokemonIdToTypes = <int, List<MoorPokemonTypeData>>{};
          final pokemonIdToStats = <int, List<MoorPokemonStatData>>{};

          for (var typeRow in typeRows) {
            final type = typeRow.readTable(moorPokemonType);
            final pokemonId = typeRow.readTable(moorPokemonTypeLink).pokemonId;

            pokemonIdToTypes.putIfAbsent(pokemonId, () => []).add(type);
          }

          for (var statRow in statRows) {
            final stat = statRow.readTable(moorPokemonStat);
            final pokemonId = statRow.readTable(moorPokemonStatLink).pokemonId;

            pokemonIdToStats.putIfAbsent(pokemonId, () => []).add(stat);
          }

          return ids.map((pokemonId) {
            return MoorPokemonBundle(
              idToPokemonMap[pokemonId],
              pokemonIdToTypes[pokemonId],
              pokemonIdToStats[pokemonId],
            );
          }).toList();
        },
      );
    });
  }

  Future<int> insertOrReplacePokemon(
      final Insertable<MoorPokemonData> pokemon) async {
    return into(moorPokemon).insert(pokemon, mode: InsertMode.insertOrReplace);
  }

  Future<int> insertOrReplacePokemonType(
    final Insertable<MoorPokemonTypeData> type,
  ) async {
    return into(moorPokemonType).insert(type, mode: InsertMode.insertOrReplace);
  }

  Future<int> insertOrReplacePokemonStat(
    final Insertable<MoorPokemonStatData> stat,
  ) async {
    return into(moorPokemonStat).insert(stat, mode: InsertMode.insertOrReplace);
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
