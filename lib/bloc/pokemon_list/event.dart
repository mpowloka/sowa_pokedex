part of 'bloc.dart';

@freezed
abstract class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.fetchMoreData() = FetchMoreData;

  const factory PokemonListEvent.tileClicked(
    final Pokemon pokemon,
  ) = TileClicked;

  const factory PokemonListEvent.viewEntered() = ViewEntered;

  const factory PokemonListEvent.pokemonListUpdated(
    final List<Pokemon> pokemonList,
  ) = PokemonListUpdated;
}
