import '../platform.dart';

final class PlatformImpl implements Platform {
  @override
  void destroy() {
    throw UnimplementedError();
  }

  @override
  Stream<Event> get events => throw UnimplementedError();

  @override
  Map<String, dynamic> execute({required Map<String, dynamic> function}) {
    throw UnimplementedError();
  }

  @override
  Future<void> initialize({
    Iterable<Map<String, dynamic>> beforeReceive = const [],
  }) {
    throw UnimplementedError();
  }

  @override
  void send({required Map<String, dynamic> function}) {
    throw UnimplementedError();
  }
}
