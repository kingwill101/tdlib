import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message senders
@immutable
final class MessageSenders extends TdObject {
  MessageSenders({required this.totalCount, required this.senders});

  /// [totalCount] Approximate total number of message senders found
  final int totalCount;

  /// [senders] List of message senders
  final List<MessageSender> senders;

  static const String constructor = 'messageSenders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'senders': senders.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenders(
      totalCount: (json['total_count'] as int?) ?? 0,
      senders: List<MessageSender>.from(
        tdListFromJson(json['senders'])
            .map((item) => MessageSender.fromJson(tdMapFromJson(item)))
            .whereType<MessageSender>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
