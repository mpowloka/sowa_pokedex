import 'package:sowa_pokedex/moor/database.dart';

class PokemonBundle {
  final MoorPokemonData pokemonData;
  final List<MoorPokemonTypeData> typesData;
  final List<MoorPokemonStatData> statsData;

  PokemonBundle(this.pokemonData, this.typesData, this.statsData);
}
