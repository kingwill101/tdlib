import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a business chat link
@immutable
final class BusinessChatLinkInfo extends TdObject {
  BusinessChatLinkInfo({required this.chatId, this.text});

  /// [chatId] Identifier of the private chat that created the link
  final int chatId;

  /// [text] Message draft text that must be added to the input field
  final FormattedText? text;

  static const String constructor = 'businessChatLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static BusinessChatLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessChatLinkInfo(
      chatId: (json['chat_id'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
