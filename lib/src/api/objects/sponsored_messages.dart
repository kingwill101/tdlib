import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sponsored messages
@immutable
final class SponsoredMessages extends TdObject {
  SponsoredMessages({required this.messages, required this.messagesBetween});

  /// [messages] List of sponsored messages
  final List<SponsoredMessage> messages;

  /// [messagesBetween] The minimum number of messages between shown sponsored
  /// messages, or 0 if only one sponsored message must be shown after all
  /// ordinary messages
  final int messagesBetween;

  static const String constructor = 'sponsoredMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'messages': messages.map((item) => item.toJson()).toList(),
    'messages_between': messagesBetween,
    '@type': constructor,
  };

  static SponsoredMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredMessages(
      messages: List<SponsoredMessage>.from(
        tdListFromJson(json['messages'])
            .map((item) => SponsoredMessage.fromJson(tdMapFromJson(item)))
            .whereType<SponsoredMessage>(),
      ),
      messagesBetween: (json['messages_between'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
