import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/moor/database.dart';
import 'package:sowa_pokedex/network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/repository/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon_type.dart';
import 'package:sowa_pokedex/repository/pokemon/type_color_resolver.dart';

import '../mocks.dart';

const _type = 'type';
const _id = 42;
const _color = Colors.blue;
const _networkType = NetworkPokemonType(NetworkPokemonTypeName(_type));
const _databaseOutputType = MoorPokemonTypeCompanion(typeName: Value(_type));
final _databaseInputType = MoorPokemonTypeData(id: _id, typeName: _type);
const _domainType = PokemonType(_id, _type, _color);

PokemonTypeMapper _pokemonTypeMapper;
PokemonTypeColorResolver _colorResolverMock;

void main() {
  setUp(() {
    _colorResolverMock = PokemonTypeColorResolverMock();
    when(_colorResolverMock.getTypeColor(_type)).thenReturn(_color);
    _pokemonTypeMapper = PokemonTypeMapper(_colorResolverMock);
  });

  test('networkToDatabase() returns mapped object', () {
    final result = _pokemonTypeMapper.networkToDatabase(_networkType);

    expect(result, _databaseOutputType);
  });

  test('databaseToDomain() returns mapped object', () {
    final result = _pokemonTypeMapper.databaseToDomain(_databaseInputType);

    expect(result, _domainType);
  });
}