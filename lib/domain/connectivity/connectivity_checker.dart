import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectionChecker {
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

  Stream<bool> watchInternetConnectionAvailable() {
    return Connectivity().onConnectivityChanged.map(_connectivityToBool);
  }

  bool _connectivityToBool(final ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
