class ActivityAlreadyRunningException implements Exception {
  final String message;

  ActivityAlreadyRunningException(this.message);

  @override
  String toString() => message;
}
