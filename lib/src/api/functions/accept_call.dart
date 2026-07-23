import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Accepts an incoming call
/// Returns [Ok]
@immutable
final class AcceptCall extends TdFunction {
  AcceptCall({required this.callId, this.protocol});

  /// [callId] Call identifier
  final int callId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol? protocol;

  static const String constructor = 'acceptCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call_id': callId,
    'protocol': protocol?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
