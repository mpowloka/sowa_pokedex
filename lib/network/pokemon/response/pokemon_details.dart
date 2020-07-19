import 'package:json_annotation/json_annotation.dart';

part 'pokemon_details.g.dart';

@JsonSerializable()
class PokemonDetailsResponse {
  @JsonKey(name: 'base_experience')
  final int exp;
  final int height;
  final int id;
  final String name;
  final NetworkPokemonSprites sprites;
  final List<NetworkPokemonStat> stats;
  final List<NetworkPokemonType> types;
  final int weight;

  PokemonDetailsResponse(
    this.exp,
    this.height,
    this.id,
    this.name,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  );

  factory PokemonDetailsResponse.fromJson(final Map<String, dynamic> json) {
    return _$PokemonDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonDetailsResponseToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailsResponse &&
          runtimeType == other.runtimeType &&
          exp == other.exp &&
          height == other.height &&
          id == other.id &&
          name == other.name &&
          sprites == other.sprites &&
          stats == other.stats &&
          types == other.types &&
          weight == other.weight;

  @override
  int get hashCode =>
      exp.hashCode ^
      height.hashCode ^
      id.hashCode ^
      name.hashCode ^
      sprites.hashCode ^
      stats.hashCode ^
      types.hashCode ^
      weight.hashCode;

  @override
  String toString() {
    return 'PokemonDetailsResponse{exp: $exp, height: $height, id: $id, name: $name, sprites: $sprites, stats: $stats, types: $types, weight: $weight}';
  }
}

@JsonSerializable()
class NetworkPokemonSprites {
  @JsonKey(name: 'back_default')
  final String backSprite;
  @JsonKey(name: 'front_default')
  final String frontSprite;

  NetworkPokemonSprites(this.backSprite, this.frontSprite);

  factory NetworkPokemonSprites.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonSpritesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonSpritesToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonSprites &&
          runtimeType == other.runtimeType &&
          backSprite == other.backSprite &&
          frontSprite == other.frontSprite;

  @override
  int get hashCode => backSprite.hashCode ^ frontSprite.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonSprites{backSprite: $backSprite, frontSprite: $frontSprite}';
  }
}

@JsonSerializable()
class NetworkPokemonStat {
  @JsonKey(name: 'base_stat')
  final int statValue;
  @JsonKey(name: 'stat')
  final NetworkPokemonStatName statName;

  NetworkPokemonStat(this.statValue, this.statName);

  factory NetworkPokemonStat.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonStatFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonStatToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonStat &&
          runtimeType == other.runtimeType &&
          statValue == other.statValue &&
          statName == other.statName;

  @override
  int get hashCode => statValue.hashCode ^ statName.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonStat{statValue: $statValue, statName: $statName}';
  }
}

@JsonSerializable()
class NetworkPokemonStatName {
  final String name;

  NetworkPokemonStatName(this.name);

  factory NetworkPokemonStatName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonStatNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonStatNameToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonStatName &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonStatName{name: $name}';
  }
}

@JsonSerializable()
class NetworkPokemonType {
  final NetworkPokemonTypeName type;

  NetworkPokemonType(this.type);

  factory NetworkPokemonType.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonTypeToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonType &&
          runtimeType == other.runtimeType &&
          type == other.type;

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonType{type: $type}';
  }
}

@JsonSerializable()
class NetworkPokemonTypeName {
  final String name;

  NetworkPokemonTypeName(this.name);

  factory NetworkPokemonTypeName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonTypeNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonTypeNameToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonTypeName &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonTypeName{name: $name}';
  }
}
