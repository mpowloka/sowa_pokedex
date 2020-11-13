import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class PokemonTypeColorResolver {
  final Color defaultColor = Colors.white;

  Color getTypeColor(final String type) {
    switch (type) {
      case 'normal':
        return const Color(0xffCA98A7);
      case 'fighting':
        return const Color(0xff994025);
      case 'flying':
        return const Color(0xff93B2C7);
      case 'poison':
        return const Color(0xff9B69D9);
      case 'ground':
        return const Color(0xffA9702C);
      case 'rock':
        return const Color(0xff8A3E20);
      case 'bug':
        return Colors.green;
      case 'ghost':
        return const Color(0xff906790);
      case 'steel':
        return const Color(0xff5F756D);
      case 'fire':
        return const Color(0xffFF606B);
      case 'water':
        return const Color(0xff86A8FC);
      case 'grass':
        return Colors.greenAccent;
      case 'electric':
        return const Color(0xffFBFB72);
      case 'psychic':
        return const Color(0xffA46487);
      case 'ice':
        return const Color(0xffD8F0FA);
      case 'dragon':
        return const Color(0xff448B95);
      case 'dark':
        return const Color(0xffA7A9AB);
      case 'fairy':
        return const Color(0xffEA1369);
      case 'unknown':
        return Colors.white;
      case 'shadow':
        return Colors.purpleAccent;
      default:
        return defaultColor;
    }
  }
}
