import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/di.dart';
import 'package:sowa_pokedex/ui/common/images.dart';
import 'package:sowa_pokedex/ui/home/state/empty_list_view.dart';
import 'package:sowa_pokedex/ui/home/state/initial_view.dart';
import 'package:sowa_pokedex/ui/home/state/pokemon_list_available_view.dart';
import 'package:sowa_pokedex/ui/splash/screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: BlocBuilder<PokemonListBloc, PokemonListState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => InitialView(),
            pokemonListAvailable: (state) => PokemonListAvailableView(state),
            emptyList: (state) => EmptyListView(state),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.file_download),
        onPressed: () {
          BlocProvider.of<PokemonListBloc>(context)
              .add(PokemonListEvent.fetchMoreData());
        },
      ),
    );
  }

  AppBar appBar() => AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(
            child: Image.asset(Images.pokeball),
            tag: SplashScreen.heroTag,
          ),
        ),
        title: Text('Sowa Pokedex'),
      );
}
