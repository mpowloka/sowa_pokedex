import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class ConnectionChecker {
  /// It is supposed to work for the entire application lifetime
  // ignore: close_sinks
  final _internetConnectionSubject = BehaviorSubject.seeded(true);

  ConnectionChecker() {
    Connectivity()
        .onConnectivityChanged
        .map(_connectivityToBool)
        .listen(_internetConnectionSubject.add);
  }

  Stream<bool> get internetConnectionAvailable =>
      _internetConnectionSubject.stream;
  
  Future<bool> checkInternetConnectionAvailable() async {
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult result;

    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    return _connectivityToBool(result);
  }

  bool _connectivityToBool(final ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
