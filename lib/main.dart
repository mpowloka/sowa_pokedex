import 'package:flutter/material.dart';
import 'package:sowa_pokedex/bloc/common/observer.dart';
import 'package:sowa_pokedex/di.dart';

import 'ui/application.dart';

void main() {
  configureDi();
  PokedexBlocObserver.configure();
  runApp(PokedexApp());
}