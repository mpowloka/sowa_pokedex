import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/ui/pokemon_list/page.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/view_model.dart';

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
        create: (context) => getIt<PokemonListViewModel>(),
        child: PokemonListPage(),
      ),
    );
  }

  void _lockPortraitOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
