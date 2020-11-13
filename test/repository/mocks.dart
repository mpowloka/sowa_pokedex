import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:sowa_pokedex/data_moor/pokemon/dao.dart';
import 'package:sowa_pokedex/data_network/pokemon/fetch_pokemon_batch.dart';
import 'package:sowa_pokedex/data_network/pokemon/fetch_pokemon_details.dart';
import 'package:sowa_pokedex/domain/pokemon/mapper/pokemon_stat_mapper.dart';
import 'package:sowa_pokedex/domain/pokemon/mapper/pokemon_type_mapper.dart';
import 'package:sowa_pokedex/domain/pokemon/type_color_resolver.dart';

class PokemonTypeColorResolverMock extends Mock
    implements PokemonTypeColorResolver {}

class PokemonTypeMapperMock extends Mock implements PokemonTypeMapper {}

class PokemonStatMapperMock extends Mock implements PokemonStatMapper {}

class PokemonDaoMock extends Mock implements PokemonDao {}

class FetchPokemonBatchMock extends Mock implements FetchPokemonBatch {}

class FetchPokemonDetailsMock extends Mock implements FetchPokemonDetails {}

class LoggerMock extends Mock implements Logger {}

