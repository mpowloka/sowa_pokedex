import 'package:flutter/material.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';

class EmptyListView extends StatelessWidget {
  final EmptyList _state;

  const EmptyListView(this._state);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_state.reason));
  }
}
