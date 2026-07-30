import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a viewer of a message
@immutable
final class MessageViewer extends TdObject {
  MessageViewer({required this.userId, required this.viewDate});

  /// [userId] User identifier of the viewer
  final int userId;

  /// [viewDate] Approximate point in time (Unix timestamp) when the message was
  /// viewed
  final int viewDate;

  static const String constructor = 'messageViewer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'view_date': viewDate,
    '@type': constructor,
  };

  static MessageViewer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageViewer(
      userId: (json['user_id'] as int?) ?? 0,
      viewDate: (json['view_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
