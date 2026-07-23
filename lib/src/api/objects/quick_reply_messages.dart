import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of quick reply messages
@immutable
final class QuickReplyMessages extends TdObject {
  QuickReplyMessages({this.messages});

  /// [messages] List of quick reply messages; messages may be null
  final List<QuickReplyMessage>? messages;

  static const String constructor = 'quickReplyMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'messages': messages?.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static QuickReplyMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyMessages(
      messages: List<QuickReplyMessage>.from(
        tdListFromJson(json['messages'])
            .map((item) => QuickReplyMessage.fromJson(tdMapFromJson(item)))
            .whereType<QuickReplyMessage>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
