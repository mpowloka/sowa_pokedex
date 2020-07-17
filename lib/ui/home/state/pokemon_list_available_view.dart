import 'package:flutter/material.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/ui/home/card.dart';

class PokemonListAvailableView extends StatelessWidget {
  final PokemonListAvailable _state;

  PokemonListAvailableView(this._state);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children:
          _state.pokemonList.map((pokemon) => PokemonCard(pokemon)).toList(),
    );
  }
}
