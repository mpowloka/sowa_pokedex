import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/domain/pokemon/repository.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view_model/states.dart';

@injectable
class PokemonDetailsViewModel extends Cubit<PokemonDetailsState> {
  StreamSubscription _subscription;
  final PokemonRepository _pokemonRepository;

  PokemonDetailsViewModel(this._pokemonRepository)
      : super(PokemonDetailsState.loading());

  void init(final int pokemonId) {
    _subscription =
        _pokemonRepository.watchPokemon(pokemonId).listen((pokemon) {
      emit(PokemonDetailsState.dataAvailable(pokemon));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
