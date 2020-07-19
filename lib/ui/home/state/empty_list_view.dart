import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/bloc/pokemon_list/bloc.dart';
import 'package:sowa_pokedex/ui/common/style_const.dart';

class EmptyListView extends StatelessWidget {
  final EmptyList _state;

  const EmptyListView(this._state);

  @override
  Widget build(final BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: AutoSizeText(
        _state.reason,
        style: kErrorTextStyle,
        textAlign: TextAlign.center,
      ),
    ));
  }
}
