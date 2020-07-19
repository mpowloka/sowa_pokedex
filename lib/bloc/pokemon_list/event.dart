part of 'bloc.dart';

@freezed
abstract class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.fetchMoreData() = FetchMoreData;

  const factory PokemonListEvent.pokemonPicked(
    final Pokemon pokemon,
  ) = PokemonPicked;

  const factory PokemonListEvent.viewEntered() = ViewEntered;

  const factory PokemonListEvent.pokemonListUpdated(
    final List<Pokemon> pokemonList,
  ) = PokemonListUpdated;
}
