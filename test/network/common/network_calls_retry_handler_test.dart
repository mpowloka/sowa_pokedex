import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sowa_pokedex/data_network/common/network_calls_retry_handler.dart';
import 'package:sowa_pokedex/data_network/common/network_error.dart';

import '../mocks.dart';

NetworkCallsRetryHandler _networkCallsRetryHandler;

final _exception = Exception();
final _errorCodeNetworkError = Right(NetworkError(responseErrorCode, null));
final _exceptionNetworkError = Right(NetworkError(null, _exception));
const responseBody = "function_result";
const responseErrorCode = 500;
final _wrappedSuccessfulFunctionResult = Left("function_result");

void main() {
  setUp(() {
    _successfulFunctionCallsCounter = 0;
    _errorCodeReturningFunctionCallsCounter = 0;
    _functionThatReturnsErrorCodeOnceCallsCounter = 0;
    _throwingExceptionFunctionCallsCounter = 0;
    _functionThatThrowsExceptionOnceCallsCounter = 0;
    _networkCallsRetryHandler = NetworkCallsRetryHandler();
  });

  test(
      'callWithRetry() calls function only once and returns successful result if it succeeds',
      () async {
    final result =
        await _networkCallsRetryHandler.callWithRetry(_successfulFunction);

    expect(result, _wrappedSuccessfulFunctionResult);
    expect(_successfulFunctionCallsCounter, 1);
  });

  test(
      'callWithRetry() calls function 2 times and returns successful result if it returns error code once but then passes',
      () async {
    final result = await _networkCallsRetryHandler
        .callWithRetry(_functionThatReturnsErrorCodeOnce);

    expect(result, _wrappedSuccessfulFunctionResult);
    expect(_functionThatReturnsErrorCodeOnceCallsCounter, 2);
  });

  test(
      'callWithRetry() calls function 2 times and returns successful result if it throws exception once but then passes',
      () async {
    final result = await _networkCallsRetryHandler
        .callWithRetry(_functionThatThrowsExceptionOnce);

    expect(result, _wrappedSuccessfulFunctionResult);
    expect(_functionThatThrowsExceptionOnceCallsCounter, 2);
  });

  test(
      'callWithRetry() calls function 3 times and returns error code if such returned from endpoint',
      () async {
    final result = await _networkCallsRetryHandler
        .callWithRetry(_errorCodeReturningFunction);

    expect(result, _errorCodeNetworkError);
    expect(_errorCodeReturningFunctionCallsCounter, 3);
  });

  test(
      'callWithRetry() calls function 3 times and returns exception if it\'s thrown',
      () async {
    final result = await _networkCallsRetryHandler
        .callWithRetry(_throwingExceptionFunction);

    expect(result, _exceptionNetworkError);
    expect(_throwingExceptionFunctionCallsCounter, 3);
  });
}

int _successfulFunctionCallsCounter = 0;

Future<Response> _successfulFunction() {
  _successfulFunctionCallsCounter++;
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful).thenReturn(true);
  when(responseMock.body).thenReturn(responseBody);
  return Future.value(responseMock);
}

int _errorCodeReturningFunctionCallsCounter = 0;

Future<Response> _errorCodeReturningFunction() {
  _errorCodeReturningFunctionCallsCounter++;
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful).thenReturn(false);
  when(responseMock.statusCode).thenReturn(responseErrorCode);
  return Future.value(responseMock);
}

int _throwingExceptionFunctionCallsCounter = 0;

Future<Response> _throwingExceptionFunction() {
  _throwingExceptionFunctionCallsCounter++;
  throw _exception;
}

int _functionThatReturnsErrorCodeOnceCallsCounter = 0;

Future<Response> _functionThatReturnsErrorCodeOnce() {
  _functionThatReturnsErrorCodeOnceCallsCounter++;
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful)
      .thenAnswer((_) => _functionThatReturnsErrorCodeOnceCallsCounter > 1);
  when(responseMock.body).thenReturn(responseBody);
  return Future.value(responseMock);
}

int _functionThatThrowsExceptionOnceCallsCounter = 0;

Future<Response> _functionThatThrowsExceptionOnce() {
  _functionThatThrowsExceptionOnceCallsCounter++;
  final responseMock = ResponseMock();
  when(responseMock.isSuccessful).thenReturn(true);
  when(responseMock.body).thenReturn(responseBody);
  if (_functionThatThrowsExceptionOnceCallsCounter > 1) {
    return Future.value(responseMock);
  } else {
    throw _exception;
  }
}
