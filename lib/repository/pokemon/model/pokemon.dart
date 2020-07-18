import 'package:sowa_pokedex/repository/pokemon/model/pokemon_stat.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon_type.dart';

class Pokemon {
  final int id;
  final int exp;
  final int height;
  final int weight;
  final String name;
  final String sprite;
  final List<PokemonStat> stats;
  final List<PokemonType> types;

  Pokemon(
    this.id,
    this.exp,
    this.height,
    this.weight,
    this.name,
    this.sprite,
    this.stats,
    this.types,
  );

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is Pokemon &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          exp == other.exp &&
          height == other.height &&
          name == other.name &&
          sprite == other.sprite &&
          stats == other.stats &&
          types == other.types &&
          weight == other.weight;

  @override
  int get hashCode =>
      id.hashCode ^
      exp.hashCode ^
      height.hashCode ^
      name.hashCode ^
      sprite.hashCode ^
      stats.hashCode ^
      types.hashCode ^
      weight.hashCode;

  @override
  String toString() {
    return 'Pokemon{id: $id, exp: $exp, height: $height, name: $name, sprite: $sprite, stats: $stats, types: $types, weight: $weight}';
  }
}
