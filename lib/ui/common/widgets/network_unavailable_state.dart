import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/ui/common/style/text_style.dart';

class NetworkUnavailableState extends StatelessWidget {
  final VoidCallback onReloadTapped;

  const NetworkUnavailableState({Key key, @required this.onReloadTapped}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AutoSizeText(
            'Network unavailable. Check your connection and reload.',
            style: TextStyles.errorTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          RaisedButton(child: Text('Reload'), onPressed: onReloadTapped)
        ],
      ),
    ));
  }
}
