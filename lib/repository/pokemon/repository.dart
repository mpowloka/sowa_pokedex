import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sowa_pokedex/network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/repository/pokemon/pokemon.dart';

@lazySingleton
class PokemonRepository {
  final FetchPokemonBatch _fetchPokemonBatch;
  final List<Pokemon> pokemonList = [];
  PokemonRepository(this._fetchPokemonBatch);

  void fetchPokemonBatch() async {
    final result = await _fetchPokemonBatch.fetch(10, 10);

    result.fold(
      (pokemonBatch) => pokemonList.addAll(
        pokemonBatch.results.map((shortInfo) => Pokemon(shortInfo.name))
      ),
      (networkError) => Logger().e('Failed to fetch Pokemon batch: $networkError'),
    );
  }
}
