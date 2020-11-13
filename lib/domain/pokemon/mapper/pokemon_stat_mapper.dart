import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/data_moor/database.dart';
import 'package:sowa_pokedex/data_network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon_stat.dart';

@injectable
class PokemonStatMapper {
  MoorPokemonStatCompanion networkToDatabase(
    final NetworkPokemonStat networkStat,
  ) {
    return MoorPokemonStatCompanion(
      statName: Value(networkStat.statName.name),
      value: Value(networkStat.statValue),
    );
  }

  PokemonStat databaseToDomain(final MoorPokemonStatData data) {
    return PokemonStat(data.id, data.statName, data.value);
  }
}
