class PokemonStat {
  final int id;
  final String name;
  final int value;

  PokemonStat(this.id, this.name, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonStat &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ value.hashCode;

  @override
  String toString() {
    return 'PokemonStat{id: $id, name: $name, value: $value}';
  }
}