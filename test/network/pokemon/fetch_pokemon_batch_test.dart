import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sowa_pokedex/network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/network/common/network_error.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/service.dart';

import '../mocks.dart';
import 'test_data.dart';

FetchPokemonBatch _fetchPokemonBatch;
PokemonService _pokemonServiceMock;
NetworkCallsRetryHandler _networkCallsRetryHandlerMock;

const limit = 10;
const offset = 20;
const errorCode = 42;
const networkError = Right(NetworkError(errorCode, null));
final mappedResponse =
    Left(PokemonBatchResponse.fromJson(PokemonTestData.pokemonBatchJsonMap));

void main() {
  setUp(() {
    _pokemonServiceMock = PokemonServiceMock();
    _networkCallsRetryHandlerMock = NetworkCallsRetryHandler();
    _fetchPokemonBatch =
        FetchPokemonBatch(_pokemonServiceMock, _networkCallsRetryHandlerMock);
  });

  test('fetch() passes arguments to PokemonService', () {
    _fetchPokemonBatch.fetch(limit, offset);

    verify(_pokemonServiceMock.getPokemonBatch(limit, offset));
  });

  test('fetch() returns successful result and maps it to PokemonBatchResponse',
      () async {
    mockFetchSuccessful();

    final result = await _fetchPokemonBatch.fetch(limit, offset);

    expect(result, mappedResponse);
  });

  test('fetch() returns error result', () async {
    mockFetchFailed();

    final result = await _fetchPokemonBatch.fetch(limit, offset);

    expect(result, networkError);
  });
}

void mockFetchSuccessful() {
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful).thenReturn(true);
  when(responseMock.body).thenReturn(PokemonTestData.pokemonBatchJsonMap);
  when(_pokemonServiceMock.getPokemonBatch(limit, offset)).thenAnswer(
    (_) => Future.value(responseMock),
  );
}

void mockFetchFailed() {
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful).thenReturn(false);
  when(responseMock.statusCode).thenReturn(errorCode);
  when(_pokemonServiceMock.getPokemonBatch(limit, offset)).thenAnswer(
    (realInvocation) => Future.value(responseMock),
  );
}
