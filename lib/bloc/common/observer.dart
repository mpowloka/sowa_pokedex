import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class PokedexBlocObserver extends BlocObserver {

  @override
  void onTransition(final Bloc bloc, final Transition transition) {
    Logger().d(transition);
    super.onTransition(bloc, transition);
  }

  static void configure() {
    Bloc.observer = PokedexBlocObserver();
  }
}