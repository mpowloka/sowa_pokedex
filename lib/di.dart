import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

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
        baseUrl: 'https://pokeapi.co/api/v2/',
        converter: JsonConverter(),
      );
}
