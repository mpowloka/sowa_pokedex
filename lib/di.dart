import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sowa_pokedex/data_network/common/network_constants.dart';

import 'di.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDi() => $initGetIt(getIt);

@module
abstract class ApplicationModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();

  @lazySingleton
  ChopperClient get chopperClient => ChopperClient(
        baseUrl: NetworkConstants.backendUrl,
        converter: JsonConverter(),
      );

  @lazySingleton
  Logger get logger => Logger();
}
