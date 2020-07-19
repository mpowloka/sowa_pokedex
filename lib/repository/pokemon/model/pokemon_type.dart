import 'package:flutter/material.dart';

class PokemonType {
  final int id;
  final String name;
  final Color color;

  PokemonType(this.id, this.name, this.color);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonType &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          color == other.color;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ color.hashCode;

  @override
  String toString() {
    return 'PokemonType{id: $id, name: $name, color: $color}';
  }
}