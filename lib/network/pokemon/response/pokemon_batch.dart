import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_batch.g.dart';

@JsonSerializable()
class PokemonBatchResponse {
  final int count;
  final String next;
  final String previous;
  final List<NetworkPokemonShortInfo> results;

  PokemonBatchResponse(this.count, this.next, this.previous, this.results);

  factory PokemonBatchResponse.fromJson(final Map<String, dynamic> json) {
    return _$PokemonBatchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PokemonBatchResponseToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonBatchResponse &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          next == other.next &&
          previous == other.previous &&
          ListEquality().equals(results, other.results);

  @override
  int get hashCode =>
      count.hashCode ^ next.hashCode ^ previous.hashCode ^ results.hashCode;

  @override
  String toString() {
    return 'PokemonBatchResponse{count: $count, next: $next, previous: $previous, results: $results}';
  }
}

@JsonSerializable()
class NetworkPokemonShortInfo {
  final String name;
  final String url;

  NetworkPokemonShortInfo(this.name, this.url);

  factory NetworkPokemonShortInfo.fromJson(final Map<String, dynamic> json) {
    return _$NetworkPokemonShortInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkPokemonShortInfoToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkPokemonShortInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          url == other.url;

  @override
  int get hashCode => name.hashCode ^ url.hashCode;

  @override
  String toString() {
    return 'NetworkPokemonShortInfo{name: $name, url: $url}';
  }
}
