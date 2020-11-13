import 'package:flutter/material.dart';
import 'package:sowa_pokedex/ui/common/style/text_style.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view/details_card.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view_model/states.dart';

class PokemonDetailsAvailable extends StatelessWidget {
  final PokemonDetailsDataAvailableState _state;

  const PokemonDetailsAvailable(this._state, {Key key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Material(
      child: Container(
        color: _state.pokemon.color,
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
        PokemonDetailsCard(_state.pokemon),
        pokemonImage(),
      ],
    );
  }

  Row pokemonImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          _state.pokemon.sprite,
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
        _state.pokemon.name.toUpperCase(),
        style: TextStyles.detailsNameTextStyle,
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
