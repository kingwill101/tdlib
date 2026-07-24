import '../../td_api.dart';

final class TdFunctionException implements Exception {
  TdFunctionException({required this.error, required this.function});

  final TdFunction function;
  final TdError error;

  @override
  String toString() =>
      'TdFunctionException(function: ${function.toJson()}, error: ${error.toJson()})';
}
