import 'package:sowa_pokedex/data_moor/database.dart';

class MoorPokemonBundle {
  final MoorPokemonData pokemonData;
  final List<MoorPokemonTypeData> typesData;
  final List<MoorPokemonStatData> statsData;

  MoorPokemonBundle(this.pokemonData, this.typesData, this.statsData);
}
