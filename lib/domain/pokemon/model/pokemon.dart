import 'package:flutter/material.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon_stat.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon_type.dart';

class Pokemon {
  final int id;
  final int exp;
  final int height;
  final int weight;
  final String name;
  final String sprite;
  final Color color;
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
    this.color,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pokemon &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          exp == other.exp &&
          height == other.height &&
          weight == other.weight &&
          name == other.name &&
          sprite == other.sprite &&
          color == other.color &&
          stats == other.stats &&
          types == other.types;

  @override
  int get hashCode =>
      id.hashCode ^
      exp.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      name.hashCode ^
      sprite.hashCode ^
      color.hashCode ^
      stats.hashCode ^
      types.hashCode;

  @override
  String toString() {
    return 'Pokemon{id: $id, exp: $exp, height: $height, weight: $weight, name: $name, sprite: $sprite, color: $color, stats: $stats, types: $types}';
  }
}
