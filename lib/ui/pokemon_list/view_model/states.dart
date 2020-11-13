import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon.dart';

part 'states.freezed.dart';

@freezed
abstract class PokemonListState with _$PokemonListState {
  const factory PokemonListState.initial() = PokemonListLoadingState;

  const factory PokemonListState.pokemonListAvailable(
    final List<Pokemon> pokemonList,
    final int pokemonCount,
  ) = PokemonListDataAvailableState;

  const factory PokemonListState.emptyList() = PokemonListEmptyState;

  const factory PokemonListState.networkUnavailable() =
      PokemonListNetworkUnavailableState;
}
