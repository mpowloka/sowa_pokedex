import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/domain/pokemon/model/pokemon.dart';
import 'package:sowa_pokedex/ui/common/images.dart';
import 'package:sowa_pokedex/ui/common/widgets/empty_state.dart';
import 'package:sowa_pokedex/ui/common/widgets/loading_state.dart';
import 'package:sowa_pokedex/ui/common/widgets/network_unavailable_state.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view/pokemon_list_available_view.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/states.dart';
import 'package:sowa_pokedex/ui/pokemon_list/view_model/view_model.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PokemonListViewModel>(context).init();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: BlocBuilder<PokemonListViewModel, PokemonListState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => LoadingState(),
            pokemonListAvailable: (state) => PokemonListAvailableView(
              state,
              onCardTapped: (pokemon) => _onPokemonClicked(context, pokemon),
            ),
            emptyList: (_) => EmptyState(
              onReloadTapped: () => _onMoreDataRequested(context),
            ),
            networkUnavailable: (_) => NetworkUnavailableState(
              onReloadTapped: () => _onMoreDataRequested(context),
            ),
          );
        },
      ),
      floatingActionButton: _fab(context),
    );
  }

  void _onPokemonClicked(final BuildContext context, final Pokemon pokemon) {
    BlocProvider.of<PokemonListViewModel>(context).pokemonPicked(pokemon.id);
  }

  void _onMoreDataRequested(final BuildContext context) {
    BlocProvider.of<PokemonListViewModel>(context).moreDataRequested();
  }

  Widget _fab(final BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.file_download),
      onPressed:
          BlocProvider.of<PokemonListViewModel>(context).moreDataRequested,
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(Images.pokeball),
      ),
      title: Text('Sowa Pokedex'),
    );
  }
}
