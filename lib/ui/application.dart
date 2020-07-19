import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/ui/home/screen.dart';

import '../di.dart';

class PokedexApp extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    _lockPortraitOrientation();
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.blueGrey,
      )),
      title: 'Sowa Pokedex',
      navigatorKey: getIt<GlobalKey<NavigatorState>>(),
      home: BlocProvider(
        create: (context) => getIt<PokemonListBloc>(),
        child: HomeScreen(),
      ),
    );
  }

  void _lockPortraitOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
