import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/data_network/common/network_constants.dart';

part 'service.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: NetworkConstants.backendUrl)
abstract class PokemonService extends ChopperService {
  @factoryMethod
  static PokemonService create(final ChopperClient client) {
    return _$PokemonService(client);
  }

  @Get(path: 'pokemon?limit={limit}&offset={offset}')
  Future<Response> getPokemonBatch(
    @Path('limit') final int limit,
    @Path('offset') final int offset,
  );

  @Get(path: 'pokemon/{name}')
  Future<Response> getPokemonDetails(
    @Path('name') final String name,
  );
}
