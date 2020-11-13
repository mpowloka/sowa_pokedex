import 'package:flutter/material.dart';
import 'package:sowa_pokedex/ui/common/util/view_models_observer.dart';
import 'package:sowa_pokedex/di.dart';

import 'ui/application.dart';

void main() {
  configureDi();
  ViewModelsObserver.configure();
  runApp(PokedexApp());
}