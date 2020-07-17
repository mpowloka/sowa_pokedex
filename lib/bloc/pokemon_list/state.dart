part of 'bloc.dart';

@freezed
abstract class PokemonListState with _$PokemonListState {
  const factory PokemonListState.initial() = Initial;

  const factory PokemonListState.pokemonListAvailable(
    final List<Pokemon> pokemonList,
  ) = PokemonListAvailable;

  const factory PokemonListState.emptyList(
    final String reason,
  ) = EmptyList;
}
