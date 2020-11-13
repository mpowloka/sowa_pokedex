class NetworkError {
  final int errorCode;
  final Object error;

  const NetworkError(this.errorCode, this.error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkError &&
          runtimeType == other.runtimeType &&
          errorCode == other.errorCode &&
          error == other.error;

  @override
  int get hashCode => errorCode.hashCode ^ error.hashCode;

  @override
  String toString() {
    return 'NetworkError{errorCode: $errorCode, error: $error}';
  }
}
