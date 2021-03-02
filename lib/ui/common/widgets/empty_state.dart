import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sowa_pokedex/ui/common/style/text_style.dart';

class EmptyState extends StatelessWidget {
  final VoidCallback onReloadTapped;

  const EmptyState({Key key, @required this.onReloadTapped}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            'No pokemon available. Maybe try in a more grassy area.',
            style: TextStyles.errorTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          RaisedButton(child: Text('Reload'), onPressed: onReloadTapped)
        ],
      ),
    );
  }
}
