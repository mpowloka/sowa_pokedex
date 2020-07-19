import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:sowa_pokedex/ui/common/style_const.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon _pokemon;
  final Function(Pokemon) _onCardTap;

  const PokemonCard(this._pokemon, this._onCardTap);

  @override
  Widget build(final BuildContext context) {
    return Card(
      color: _pokemon.color,
      child: InkWell(
        onTap: () => _onCardTap(_pokemon),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  _pokemon.sprite,
                  fit: BoxFit.fill,
                ),
              ),
              AutoSizeText(
                _pokemon.name,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: kTileNameTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
