import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon.dart';

part 'states.freezed.dart';

@freezed
abstract class PokemonDetailsState with _$PokemonDetailsState{
  const factory PokemonDetailsState.dataAvailable(final Pokemon pokemon) = PokemonDetailsDataAvailableState;
  const factory PokemonDetailsState.loading() = PokemonDetailsLoadingState;
}
