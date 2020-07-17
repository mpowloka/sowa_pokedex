// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailsResponse _$PokemonDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return PokemonDetailsResponse(
    json['base_experience'] as int,
    json['height'] as int,
    json['id'] as int,
    json['name'] as String,
    json['sprites'] == null
        ? null
        : NetworkPokemonSprites.fromJson(
            json['sprites'] as Map<String, dynamic>),
    (json['stats'] as List)
        ?.map((e) => e == null
            ? null
            : NetworkPokemonStat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['types'] as List)
        ?.map((e) => e == null
            ? null
            : NetworkPokemonType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['weight'] as int,
  );
}

Map<String, dynamic> _$PokemonDetailsResponseToJson(
        PokemonDetailsResponse instance) =>
    <String, dynamic>{
      'base_experience': instance.exp,
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

NetworkPokemonSprites _$NetworkPokemonSpritesFromJson(
    Map<String, dynamic> json) {
  return NetworkPokemonSprites(
    json['back_default'] as String,
    json['front_default'] as String,
  );
}

Map<String, dynamic> _$NetworkPokemonSpritesToJson(
        NetworkPokemonSprites instance) =>
    <String, dynamic>{
      'back_default': instance.backSprite,
      'front_default': instance.frontSprite,
    };

NetworkPokemonStat _$NetworkPokemonStatFromJson(Map<String, dynamic> json) {
  return NetworkPokemonStat(
    json['base_stat'] as int,
    json['stat'] == null
        ? null
        : NetworkPokemonStatName.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NetworkPokemonStatToJson(NetworkPokemonStat instance) =>
    <String, dynamic>{
      'base_stat': instance.statValue,
      'stat': instance.statName,
    };

NetworkPokemonStatName _$NetworkPokemonStatNameFromJson(
    Map<String, dynamic> json) {
  return NetworkPokemonStatName(
    json['name'] as String,
  );
}

Map<String, dynamic> _$NetworkPokemonStatNameToJson(
        NetworkPokemonStatName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

NetworkPokemonType _$NetworkPokemonTypeFromJson(Map<String, dynamic> json) {
  return NetworkPokemonType(
    json['type'] == null
        ? null
        : NetworkPokemonTypeName.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NetworkPokemonTypeToJson(NetworkPokemonType instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

NetworkPokemonTypeName _$NetworkPokemonTypeNameFromJson(
    Map<String, dynamic> json) {
  return NetworkPokemonTypeName(
    json['name'] as String,
  );
}

Map<String, dynamic> _$NetworkPokemonTypeNameToJson(
        NetworkPokemonTypeName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
