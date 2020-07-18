import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/repository/pokemon/repository.dart';

part 'bloc.freezed.dart';

part 'event.dart';

part 'state.dart';

@lazySingleton
class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final PokemonRepository _pokemonRepository;
  final GlobalKey<NavigatorState> _navigation;

  PokemonListBloc(
    this._pokemonRepository,
    this._navigation,
  ) : super(PokemonListState.initial());

  @override
  Stream<PokemonListState> mapEventToState(
    final PokemonListEvent event,
  ) async* {
    yield* event.map(
      fetchMoreData: fetchMoreData,
      tileClicked: tileClicked,
      viewEntered: viewEntered,
      pokemonListUpdated: pokemonListUpdated,
    );
  }

  Stream<PokemonListState> fetchMoreData(final FetchMoreData event) async* {
    _pokemonRepository.fetchPokemonBatch();
  }

  Stream<PokemonListState> tileClicked(final TileClicked event) async* {
    //navigate to details
  }

  Stream<PokemonListState> viewEntered(
    final ViewEntered event,
  ) async* {
    _pokemonRepository.watchPokemonList().listen((pokemonList) {
      add(PokemonListEvent.pokemonListUpdated(pokemonList));
    });
  }

  Stream<PokemonListState> pokemonListUpdated(
    final PokemonListUpdated event,
  ) async* {
    if (event.pokemonList.isEmpty) {
      yield PokemonListState.emptyList('No Pokemon available');
    } else {
      yield PokemonListState.pokemonListAvailable(event.pokemonList);
    }
  }
}
