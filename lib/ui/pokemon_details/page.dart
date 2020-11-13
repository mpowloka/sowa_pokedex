import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sowa_pokedex/di.dart';
import 'package:sowa_pokedex/ui/common/widgets/loading_state.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view/pokemon_details_available.dart';
import 'package:sowa_pokedex/ui/pokemon_details/view_model/states.dart';

import 'view_model/view_model.dart';

class PokemonDetailsPage extends StatefulWidget {
  final int _pokemonId;

  const PokemonDetailsPage(this._pokemonId);

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();

  static Route getRoute(final int pokemonId) {
    return MaterialPageRoute(builder: (context) {
      return BlocProvider(
        create: (context) => getIt<PokemonDetailsViewModel>(),
        child: PokemonDetailsPage(pokemonId),
      );
    });
  }
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PokemonDetailsViewModel>(context).init(widget._pokemonId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsViewModel, PokemonDetailsState>(
        builder: (context, PokemonDetailsState state) => state.map(
              dataAvailable: (state) => PokemonDetailsAvailable(state),
              loading: (_) => LoadingState(),
            ));
  }
}
