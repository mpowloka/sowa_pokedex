import 'package:flutter/material.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/style_const.dart';
import 'package:sowa_pokedex/ui/pokemon_details/details_card.dart';

class PokemonDetailsScreen extends StatelessWidget {
  final Pokemon _pokemon;

  const PokemonDetailsScreen(this._pokemon);

  @override
  Widget build(final BuildContext context) {
    return Material(
      child: Container(
        color: _pokemon.color,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              arrowBack(context),
              pokemonName(),
              Expanded(child: pokemonImageAndDetailsCard()),
            ],
          ),
        ),
      ),
    );
  }

  Widget pokemonImageAndDetailsCard() {
    return Stack(
      children: <Widget>[
        PokemonDetailsCard(_pokemon),
        pokemonImage(),
      ],
    );
  }

  Row pokemonImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          _pokemon.sprite,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  Widget pokemonName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Text(
        _pokemon.name.toUpperCase(),
        style: kDetailsNameTextStyle,
      ),
    );
  }

  Widget arrowBack(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: IconButton(
        padding: EdgeInsets.all(0.0),
        iconSize: 48.0,
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
