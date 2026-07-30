import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages
@immutable
final class Messages extends TdObject {
  Messages({required this.totalCount, this.messages});

  /// [totalCount] Approximate total number of messages found
  final int totalCount;

  /// [messages] List of messages; messages may be null
  final List<Message>? messages;

  static const String constructor = 'messages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'messages': messages?.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Messages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Messages(
      totalCount: (json['total_count'] as int?) ?? 0,
      messages: List<Message>.from(
        tdListFromJson(json['messages'])
            .map((item) => Message.fromJson(tdMapFromJson(item)))
            .whereType<Message>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
