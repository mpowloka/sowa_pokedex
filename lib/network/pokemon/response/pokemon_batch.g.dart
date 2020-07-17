// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonBatchResponse _$PokemonBatchResponseFromJson(Map<String, dynamic> json) {
  return PokemonBatchResponse(
    json['count'] as int,
    json['next'] as String,
    json['previous'] as String,
    (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : NetworkPokemonShortInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonBatchResponseToJson(
        PokemonBatchResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

NetworkPokemonShortInfo _$NetworkPokemonShortInfoFromJson(
    Map<String, dynamic> json) {
  return NetworkPokemonShortInfo(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$NetworkPokemonShortInfoToJson(
        NetworkPokemonShortInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
