import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/network/common/network_error.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/service.dart';

@lazySingleton
class FetchPokemonBatch {
  final PokemonService _pokemonService;
  final NetworkCallsRetryHandler _networkCallsRetryHandler;

  FetchPokemonBatch(this._pokemonService, this._networkCallsRetryHandler);

  Future<Either<PokemonBatchResponse, NetworkError>> fetch(
    final int limit,
    final int offset,
  ) async {
    final result = await _networkCallsRetryHandler.callWithRetry(
      () => _pokemonService.getPokemonBatch(limit, offset),
    );

    return result.leftMap(
      (responseBody) => PokemonBatchResponse.fromJson(responseBody),
    );
  }
}
