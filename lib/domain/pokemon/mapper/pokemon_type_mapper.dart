import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sowa_pokedex/data_moor/database.dart';
import 'package:sowa_pokedex/data_network/pokemon/response/pokemon_details.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon_type.dart';
import 'package:sowa_pokedex/domain/pokemon/type_color_resolver.dart';

@injectable
class PokemonTypeMapper {
  final PokemonTypeColorResolver _colorResolver;

  PokemonTypeMapper(this._colorResolver);

  MoorPokemonTypeCompanion networkToDatabase(
    final NetworkPokemonType networkType,
  ) {
    return MoorPokemonTypeCompanion(
      typeName: Value(networkType.type.name),
    );
  }

  PokemonType databaseToDomain(final MoorPokemonTypeData data) {
    return PokemonType(
      data.id,
      data.typeName,
      _colorResolver.getTypeColor(data.typeName),
    );
  }
}
