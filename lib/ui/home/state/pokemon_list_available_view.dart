import 'package:flutter/material.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/home/card.dart';

class PokemonListAvailableView extends StatelessWidget {
  final PokemonListAvailable _state;
  final Function(Pokemon) onCardTapped;

  PokemonListAvailableView(this._state, this.onCardTapped);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: _state.pokemonList
          .map((pokemon) => PokemonCard(pokemon, onCardTapped))
          .toList(),
    );
  }
}
