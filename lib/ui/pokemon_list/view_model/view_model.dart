import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sowa_pokedex/domain/connectivity/connectivity_checker.dart';
import 'package:sowa_pokedex/domain/pokemon/repository.dart';
import 'package:sowa_pokedex/ui/pokemon_details/page.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/states.dart';

@injectable
class PokemonListViewModel extends Cubit<PokemonListState> {
  StreamSubscription _subscription;
  final PokemonRepository _pokemonRepository;
  final GlobalKey<NavigatorState> _navigation;
  final ConnectionChecker _connectionChecker;

  PokemonListViewModel(
    this._pokemonRepository,
    this._navigation,
    this._connectionChecker,
  ) : super(PokemonListState.initial());

  void init() {
    _subscription = Rx.combineLatest3(
        _pokemonRepository.watchPokemonList(),
        _connectionChecker.watchInternetConnectionAvailable(),
        _pokemonRepository.watchPokemonCount(),
        (pokemonList, connectionAvailable, pokemonCount) {
      if (!connectionAvailable) {
        return PokemonListState.networkUnavailable();
      } else if (pokemonList.isEmpty) {
        return PokemonListState.emptyList();
      } else {
        return PokemonListState.pokemonListAvailable(pokemonList, pokemonCount);
      }
    }).listen(emit);
  }

  void moreDataRequested() => _pokemonRepository.fetchPokemonBatch();

  void pokemonPicked(final int pokemonId) {
    _navigation.currentState.push(
      PokemonDetailsPage.getRoute(pokemonId),
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
