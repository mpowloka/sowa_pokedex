import 'dart:convert';

import 'package:sowa_pokedex/network/pokemon/response/pokemon_batch.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';

class PokemonTestData {
  static final pokemonBatchJson = '''
  {
  "count": 964,
  "next": "https://pokeapi.co/api/v2/pokemon/?offset=5&limit=5",
  "previous": null,
  "results": [
    {
      "name": "bulbasaur",
      "url": "https://pokeapi.co/api/v2/pokemon/1/"
    },
    {
      "name": "ivysaur",
      "url": "https://pokeapi.co/api/v2/pokemon/2/"
    },
    {
      "name": "venusaur",
      "url": "https://pokeapi.co/api/v2/pokemon/3/"
    },
    {
      "name": "charmander",
      "url": "https://pokeapi.co/api/v2/pokemon/4/"
    },
    {
      "name": "charmeleon",
      "url": "https://pokeapi.co/api/v2/pokemon/5/"
    }
  ]
}
  '''
      .trim();

  static final pokemonBatchJsonMap = jsonDecode(pokemonBatchJson);

  static final mappedResponse =
      PokemonBatchResponse.fromJson(pokemonBatchJsonMap);

  static final pokemonDetailsResponses = [
    PokemonDetailsResponse(0, 0, 1, 'bulbasaur', null, [], [], 0),
    PokemonDetailsResponse(0, 0, 2, 'ivysaur', null, [], [], 0),
    PokemonDetailsResponse(0, 0, 3, 'venusaur', null, [], [], 0),
    PokemonDetailsResponse(0, 0, 4, 'charmander', null, [], [], 0),
    PokemonDetailsResponse(0, 0, 5, 'charmeleon', null, [], [], 0),
  ];
}
