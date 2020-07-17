import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/network/common/network_error.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/network/pokemon/service.dart';

@lazySingleton
class FetchPokemonDetails {
  final PokemonService _pokemonService;
  final NetworkCallsRetryHandler _networkCallsRetryHandler;

  FetchPokemonDetails(this._pokemonService, this._networkCallsRetryHandler);

  Future<Either<PokemonDetailsResponse, NetworkError>> fetch(
    final String pokemonName,
  ) async {
    final result = await _networkCallsRetryHandler.callWithRetry(
      () => _pokemonService.getPokemonDetails(pokemonName),
    );

    return result.leftMap(
      (responseBody) => PokemonDetailsResponse.fromJson(responseBody),
    );
  }
}
