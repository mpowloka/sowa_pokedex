import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/style/text_style.dart';

class PokemonDetailsCard extends StatelessWidget {
  final Pokemon _pokemon;

  const PokemonDetailsCard(this._pokemon);

  @override
  Widget build(final BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 130.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64.0),
          topRight: Radius.circular(64.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 64.0, right: 64.0, top: 64.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  pokemonTypes(),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  pokemonInformationRow(
                      'Height', _pokemon.height, '(decimeter)'),
                  pokemonInformationRow(
                      'Weight', _pokemon.weight, '(hectogram)'),
                  Divider(),
                  ..._pokemon.stats
                      .map((stat) => pokemonStatisticRow(stat.name, stat.value))
                      .toList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget pokemonTypes() {
    return Wrap(
      children: _pokemon.types.map((type) {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: Card(
            color: type.color,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: AutoSizeText(
                type.name,
                style: TextStyles.statsAndFeaturesTextStyle,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget pokemonStatisticRow(
    final String statisticName,
    final int statisticValue,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AutoSizeText('$statisticName:',
              style: TextStyles.statsAndFeaturesTextStyle),
          Expanded(child: SizedBox(width: 16.0)),
          AutoSizeText(
            '$statisticValue:',
            style: TextStyles.statsAndFeaturesValueTextStyle,
          ),
          SizedBox(width: 16.0),
          Container(
            width: 150,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.shade300,
              value: statisticValue / 100,
              valueColor: AlwaysStoppedAnimation<Color>(_pokemon.color),
            ),
          )
        ],
      ),
    );
  }

  Widget pokemonInformationRow(
    final String informationName,
    final int informationValue,
    final String informationUnit,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
          AutoSizeText('$informationName:',
              style: TextStyles.statsAndFeaturesTextStyle),
          SizedBox(width: 64.0),
          AutoSizeText(
            '$informationValue $informationUnit',
            style: TextStyles.statsAndFeaturesValueTextStyle,
          ),
        ],
      ),
    );
  }
}
