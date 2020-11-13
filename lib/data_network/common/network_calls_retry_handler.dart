import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sowa_pokedex/data_network/common/network_error.dart';

typedef AsyncGenericFunction<T> = Future<T> Function();

@injectable
class NetworkCallsRetryHandler {
  static const _maxNumberOfTotalAttempts = 3;

  Future<Either<dynamic, NetworkError>> callWithRetry<T>(
    final AsyncGenericFunction<Response> call,
  ) async {
    int numberOfAttempts = 0;
    int errorCode;
    Object error;
    do {
      try {
        final Response response = await call();

        if (response.isSuccessful) {
          return Left(response.body);
        } else {
          errorCode = response.statusCode;
          numberOfAttempts++;
        }
      } catch (e) {
        error = e;
        numberOfAttempts++;
      }
    } while (numberOfAttempts < _maxNumberOfTotalAttempts);
    return Right(NetworkError(errorCode, error));
  }
}
