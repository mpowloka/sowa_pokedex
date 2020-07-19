import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:sowa_pokedex/moor/pokemon/dao.dart';
import 'package:sowa_pokedex/network/common/network_constants.dart';
import 'package:sowa_pokedex/network/common/network_error.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/repository.dart';
import 'package:sowa_pokedex/repository/pokemon/type_color_resolver.dart';

import '../network/pokemon/test_data.dart';
import 'mocks.dart';

const _pokemonCount = 100;

PokemonRepository _pokemonRepository;
PokemonDao _pokemonDaoMock;
FetchPokemonDetails _fetchPokemonDetailsMock;
FetchPokemonBatch _fetchPokemonBatchMock;
PokemonTypeColorResolver _pokemonTypeColorResolverMock;
PokemonTypeMapper _typeMapperMock;
PokemonStatMapper _statMapperMock;
PokemonMapper _pokemonMapperMock;
Logger _loggerMock;

void main() {
  setUp(() {
    _pokemonDaoMock = PokemonDaoMock();
    _fetchPokemonBatchMock = FetchPokemonBatchMock();
    _fetchPokemonDetailsMock = FetchPokemonDetailsMock();
    _pokemonTypeColorResolverMock = PokemonTypeColorResolver();
    _typeMapperMock = PokemonTypeMapper(_pokemonTypeColorResolverMock);
    _statMapperMock = PokemonStatMapper();
    _loggerMock = LoggerMock();
    _pokemonMapperMock = PokemonMapper(
      _statMapperMock,
      _typeMapperMock,
      _pokemonTypeColorResolverMock,
    );
    _pokemonRepository = PokemonRepository(
      _fetchPokemonBatchMock,
      _pokemonDaoMock,
      _fetchPokemonDetailsMock,
      _pokemonMapperMock,
      _statMapperMock,
      _typeMapperMock,
      _loggerMock,
    );

    when(_pokemonDaoMock.getPokemonCount())
        .thenAnswer((_) => Future.value(_pokemonCount));
  });

  test(
      'fetchPokemonBatch() calls fetch with offset equal to pokemon count in DAO',
      () async {
    mockFetchPokemonBatchFailed();

    await _pokemonRepository.fetchPokemonBatch();

    verify(_fetchPokemonBatchMock.fetch(10, _pokemonCount));
  });

  test('fetchPokemonBatch() logs error, when fetch pokemon batch fails',
      () async {
    mockFetchPokemonBatchFailed();

    await _pokemonRepository.fetchPokemonBatch();

    verify(_loggerMock.e(any));
  });

  test(
      'fetchPokemonBatch() fetches pokemon details for each name downloaded in batch',
      () async {
    mockFetchPokemonBatchIsSuccessful();
    mockFetchPokemonDetailsFailed();

    await _pokemonRepository.fetchPokemonBatch();

    for (final pokemonInfo in PokemonTestData.mappedResponse.results) {
      verify(_fetchPokemonDetailsMock.fetch(pokemonInfo.name));
    }
  });

  test('fetchPokemonBatch() logs errors, when fetch pokemon details fails',
      () async {
    mockFetchPokemonBatchIsSuccessful();
    mockFetchPokemonDetailsFailed();

    await _pokemonRepository.fetchPokemonBatch();

    verify(_loggerMock.e(any))
        .called(PokemonTestData.mappedResponse.results.length);
  });

  test('fetchPokemonBatch() inserts pokemon for every successful details fetch',
      () async {
    mockFetchPokemonBatchIsSuccessful();
    mockFetchPokemonDetailsSuccessful();

    await _pokemonRepository.fetchPokemonBatch();

    verify(_pokemonDaoMock.insertOrReplacePokemon(any))
        .called(PokemonTestData.pokemonDetailsResponses.length);
  });
}

void mockFetchPokemonBatchFailed() {
  when(_fetchPokemonBatchMock.fetch(10, _pokemonCount)).thenAnswer(
      (_) => Future.value(Right(NetworkError(kHttpStatusInternalError, null))));
}

void mockFetchPokemonDetailsFailed() {
  when(_fetchPokemonDetailsMock.fetch(any)).thenAnswer(
      (_) => Future.value(Right(NetworkError(kHttpStatusInternalError, null))));
}

void mockFetchPokemonBatchIsSuccessful() {
  when(_fetchPokemonBatchMock.fetch(10, _pokemonCount))
      .thenAnswer((_) => Future.value(Left(PokemonTestData.mappedResponse)));
}

void mockFetchPokemonDetailsSuccessful() {
  when(_fetchPokemonDetailsMock.fetch(any)).thenAnswer(
      (invocation) => Future.value(Left(PokemonTestData.pokemonDetailsResponses
          .where(
            (element) => element.name == invocation.positionalArguments.first,
          )
          .toList()
          .first)));
}
