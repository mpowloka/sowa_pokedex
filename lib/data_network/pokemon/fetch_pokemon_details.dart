import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/data_network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/data_network/common/network_error.dart';
import 'package:sowa_pokedex/data_network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/data_network/pokemon/service.dart';

@injectable
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
