import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/repository/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/images.dart';
import 'package:sowa_pokedex/ui/home/state/empty_list_view.dart';
import 'package:sowa_pokedex/ui/home/state/initial_view.dart';
import 'package:sowa_pokedex/ui/home/state/pokemon_list_available_view.dart';

class HomeScreen extends StatelessWidget {
  void onPokemonClicked(final BuildContext context, final Pokemon pokemon) {
    BlocProvider.of<PokemonListBloc>(context)
        .add(PokemonListEvent.pokemonPicked(pokemon));
  }

  @override
  Widget build(final BuildContext context) {
    BlocProvider.of<PokemonListBloc>(context).add(
      PokemonListEvent.viewEntered(),
    );
    return Scaffold(
      appBar: appBar(),
      body: BlocBuilder<PokemonListBloc, PokemonListState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => InitialView(),
            pokemonListAvailable: (state) => PokemonListAvailableView(
              state,
              (pokemon) => onPokemonClicked(context, pokemon),
            ),
            emptyList: (state) => EmptyListView(state),
          );
        },
      ),
      floatingActionButton: fab(context),
    );
  }

  Widget fab(final BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.file_download),
      onPressed: () {
        BlocProvider.of<PokemonListBloc>(context)
            .add(PokemonListEvent.fetchMoreData());
      },
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(Images.pokeball),
      ),
      title: Text('Sowa Pokedex'),
    );
  }
}
