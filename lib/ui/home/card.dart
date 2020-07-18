import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/images.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(Images.pokeball),
            ),
          ),
          Text(pokemon.name),
        ],
      ),
    );
  }
}
