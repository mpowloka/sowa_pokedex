import 'package:flutter/material.dart';
import 'package:sowa_pokedex/ui/common/images.dart';
import 'package:sowa_pokedex/ui/home/navigation.dart';

class SplashScreen extends StatelessWidget {
  static const heroTag = 'splash_hero_tag';

  @override
  Widget build(final BuildContext context) {
    return Material(
      child: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Hero(
              child: Image.asset(Images.pokeball),
              tag: heroTag,
            ),
            onTap: () => navigateToHome(context),
          ),
        ),
      ),
    );
  }

  void navigateToHome(final BuildContext context) {
    Navigator.of(context).pushReplacement(HomeNavigation.getRoute());
  }
}
