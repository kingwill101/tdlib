import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a shortcut that can be used for a quick reply
@immutable
final class QuickReplyShortcut extends TdObject {
  QuickReplyShortcut({
    required this.id,
    required this.name,
    this.firstMessage,
    required this.messageCount,
  });

  /// [id] Unique shortcut identifier
  final int id;

  /// [name] The name of the shortcut that can be used to use the shortcut
  final String name;

  /// [firstMessage] The first shortcut message
  final QuickReplyMessage? firstMessage;

  /// [messageCount] The total number of messages in the shortcut
  final int messageCount;

  static const String constructor = 'quickReplyShortcut';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'first_message': firstMessage?.toJson(),
    'message_count': messageCount,
    '@type': constructor,
  };

  static QuickReplyShortcut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyShortcut(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      firstMessage: QuickReplyMessage.fromJson(
        tdMapFromJson(json['first_message']),
      ),
      messageCount: (json['message_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
