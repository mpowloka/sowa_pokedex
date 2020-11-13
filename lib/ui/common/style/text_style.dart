import 'package:flutter/material.dart';

abstract class TextStyles {
  static const listTitleTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.black45,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static const detailsNameTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static const typeTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.white,
    fontSize: 22,
  );

  static const errorTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.black54,
    fontSize: 34,
  );

  static const statsAndFeaturesTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.black54,
    fontSize: 22,
  );

  static const statsAndFeaturesValueTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.black87,
    fontSize: 22,
  );

  static const tileNameTextStyle = TextStyle(
    fontFamily: 'BebasNeuePro',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    shadows: [
      Shadow(offset: Offset(0.5, 1)),
      Shadow(offset: Offset(-1, 0.5)),
    ],
  );
}
