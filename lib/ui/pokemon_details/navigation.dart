import 'package:flutter/material.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/pokemon_details/screen.dart';

class PokemonDetailsNavigation {
  static Route getRoute(final Pokemon pokemon) {
    return MaterialPageRoute(builder: (context) {
      return PokemonDetailsScreen(pokemon);
    });
  }
}
