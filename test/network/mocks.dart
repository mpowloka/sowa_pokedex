import 'package:chopper/chopper.dart';
import 'package:mockito/mockito.dart';
import 'package:sowa_pokedex/data_network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/data_network/pokemon/service.dart';

// ignore: must_be_immutable
class ResponseMock extends Mock implements Response {}

class NetworkCallsRetryHandlerMock extends Mock
    implements NetworkCallsRetryHandler {}

class PokemonServiceMock extends Mock implements PokemonService {}
