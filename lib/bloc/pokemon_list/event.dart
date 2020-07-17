part of 'bloc.dart';

@freezed
abstract class PokemonListEvent with _$PokemonListEvent {
  const factory PokemonListEvent.fetchMoreData() = FetchMoreData;

  const factory PokemonListEvent.tileClicked(
    final Pokemon pokemon,
  ) = TileClicked;
}
