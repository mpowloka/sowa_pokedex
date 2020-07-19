// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PokemonService extends PokemonService {
  _$PokemonService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = PokemonService;

  Future<Response> getPokemonBatch(int limit, int offset) {
    final $url =
        'https://pokeapi.co/api/v2/pokemon?limit=${limit}&offset=${offset}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  Future<Response> getPokemonDetails(String name) {
    final $url = 'https://pokeapi.co/api/v2/pokemon/${name}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
