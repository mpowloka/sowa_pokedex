import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sowa_pokedex/ui/splash/screen.dart';

import '../di.dart';

class PokedexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _lockPortraitOrientation();
    return MaterialApp(
      title: 'Sowa Pokedex',
      navigatorKey: getIt<GlobalKey<NavigatorState>>(),
      home: SplashScreen(),
    );
  }

  void _lockPortraitOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
