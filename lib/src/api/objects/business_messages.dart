import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages from a business account as received by a bot
@immutable
final class BusinessMessages extends TdObject {
  BusinessMessages({required this.messages});

  /// [messages] List of business messages
  final List<BusinessMessage> messages;

  static const String constructor = 'businessMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'messages': messages.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BusinessMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessMessages(
      messages: List<BusinessMessage>.from(
        tdListFromJson(json['messages'])
            .map((item) => BusinessMessage.fromJson(tdMapFromJson(item)))
            .whereType<BusinessMessage>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
