import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/repository/pokemon/pokemon.dart';
import 'package:sowa_pokedex/repository/pokemon/repository.dart';

part 'bloc.freezed.dart';

part 'event.dart';

part 'state.dart';

@lazySingleton
class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final PokemonRepository _pokemonRepository;
  final GlobalKey<NavigatorState> _navigation;

  PokemonListBloc(this._pokemonRepository, this._navigation) : super(PokemonListState.initial());

  @override
  Stream<PokemonListState> mapEventToState(
    final PokemonListEvent event,
  ) async* {
    yield* event.map(
      fetchMoreData: fetchMoreData,
      tileClicked: tileClicked,
    );
  }

  Stream<PokemonListState> fetchMoreData(final FetchMoreData event) async* {
    await _pokemonRepository.fetchPokemonBatch();

    if(_pokemonRepository.pokemonList.isEmpty) {
      yield PokemonListState.emptyList('No Pokemon Available');
    } else {
      yield PokemonListState.pokemonListAvailable(_pokemonRepository.pokemonList);
    }
  }

  Stream<PokemonListState> tileClicked(final TileClicked event) async* {
    //navigate to details
  }
}
