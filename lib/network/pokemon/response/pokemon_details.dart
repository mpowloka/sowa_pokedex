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
}

@JsonSerializable()
class NetworkPokemonStatName {
  final String name;

  NetworkPokemonStatName(this.name);

  factory NetworkPokemonStatName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonStatNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonStatNameToJson(this);
}

@JsonSerializable()
class NetworkPokemonType {
  final NetworkPokemonTypeName type;

  NetworkPokemonType(this.type);

  factory NetworkPokemonType.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonTypeToJson(this);
}

@JsonSerializable()
class NetworkPokemonTypeName {
  final String name;

  NetworkPokemonTypeName(this.name);

  factory NetworkPokemonTypeName.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonTypeNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonTypeNameToJson(this);
}
