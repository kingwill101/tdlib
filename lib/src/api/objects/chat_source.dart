import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a reason why an external chat is shown in a chat list
@immutable
sealed class ChatSource extends TdObject {
  const ChatSource();

  static const String constructor = 'chatSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatSourceMtprotoProxy]
  /// [ChatSourcePublicServiceAnnouncement]
  static ChatSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatSourceMtprotoProxy.constructor:
        return ChatSourceMtprotoProxy.fromJson(json);

      case ChatSourcePublicServiceAnnouncement.constructor:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is sponsored by the user's MTProxy server
@immutable
final class ChatSourceMtprotoProxy extends ChatSource {
  const ChatSourceMtprotoProxy();

  static const String constructor = 'chatSourceMtprotoProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatSourceMtprotoProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatSourceMtprotoProxy();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat contains a public service announcement
@immutable
final class ChatSourcePublicServiceAnnouncement extends ChatSource {
  ChatSourcePublicServiceAnnouncement({required this.type, required this.text});

  /// [type] The type of the announcement
  final String type;

  /// [text] The text of the announcement
  final String text;

  static const String constructor = 'chatSourcePublicServiceAnnouncement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type,
    'text': text,
    '@type': constructor,
  };

  static ChatSourcePublicServiceAnnouncement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatSourcePublicServiceAnnouncement(
      type: (json['type'] as String?) ?? '',
      text: (json['text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
