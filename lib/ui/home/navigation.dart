import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/di.dart';
import 'package:sowa_pokedex/ui/home/screen.dart';

class HomeNavigation {
  static Route getRoute() {
    return MaterialPageRoute(builder: (context) {
      return BlocProvider(
        create: (create) => getIt<PokemonListBloc>(),
        child: HomeScreen(),
      );
    });
  }
}
