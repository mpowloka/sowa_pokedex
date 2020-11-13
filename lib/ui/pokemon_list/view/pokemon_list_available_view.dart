import 'package:flutter/material.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/widgets/pokemon_cell.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/states.dart';

class PokemonListAvailableView extends StatelessWidget {
  final PokemonListDataAvailableState _state;
  final Function(Pokemon) onCardTapped;

  PokemonListAvailableView(this._state, {@required this.onCardTapped});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 54.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: _state.pokemonList
                .map((pokemon) => PokemonCell(pokemon, onCardTapped))
                .toList(),
          ),
        ),
        Container(
          height: 54.0,
          child: Center(
            child: Text('Current pokemon count: ${_state.pokemonCount}'),
          ),
        )
      ],
    );
  }
}
