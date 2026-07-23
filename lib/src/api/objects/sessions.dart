import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sessions
@immutable
final class Sessions extends TdObject {
  Sessions({required this.sessions, required this.inactiveSessionTtlDays});

  /// [sessions] List of sessions
  final List<Session> sessions;

  /// [inactiveSessionTtlDays] Number of days of inactivity before sessions will
  /// automatically be terminated; 1-366 days
  final int inactiveSessionTtlDays;

  static const String constructor = 'sessions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sessions': sessions.map((item) => item.toJson()).toList(),
    'inactive_session_ttl_days': inactiveSessionTtlDays,
    '@type': constructor,
  };

  static Sessions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sessions(
      sessions: List<Session>.from(
        tdListFromJson(json['sessions'])
            .map((item) => Session.fromJson(tdMapFromJson(item)))
            .whereType<Session>(),
      ),
      inactiveSessionTtlDays: (json['inactive_session_ttl_days'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
