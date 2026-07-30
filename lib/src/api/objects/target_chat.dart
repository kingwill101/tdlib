import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the target chat to be opened
@immutable
sealed class TargetChat extends TdObject {
  const TargetChat();

  static const String constructor = 'targetChat';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TargetChatChosen]
  /// [TargetChatCurrent]
  /// [TargetChatInternalLink]
  static TargetChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TargetChatChosen.constructor:
        return TargetChatChosen.fromJson(json);

      case TargetChatCurrent.constructor:
        return TargetChatCurrent.fromJson(json);

      case TargetChatInternalLink.constructor:
        return TargetChatInternalLink.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat needs to be chosen by the user among chats of the specified types
@immutable
final class TargetChatChosen extends TargetChat {
  TargetChatChosen({this.types});

  /// [types] Allowed types for the chat
  final TargetChatTypes? types;

  static const String constructor = 'targetChatChosen';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'types': types?.toJson(),
    '@type': constructor,
  };

  static TargetChatChosen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatChosen(
      types: TargetChatTypes.fromJson(tdMapFromJson(json['types'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The currently opened chat and forum topic must be kept
@immutable
final class TargetChatCurrent extends TargetChat {
  const TargetChatCurrent();

  static const String constructor = 'targetChatCurrent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TargetChatCurrent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TargetChatCurrent();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat needs to be open with the provided internal link
@immutable
final class TargetChatInternalLink extends TargetChat {
  TargetChatInternalLink({this.link});

  /// [link] An internal link pointing to the chat
  final InternalLinkType? link;

  static const String constructor = 'targetChatInternalLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link?.toJson(),
    '@type': constructor,
  };

  static TargetChatInternalLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatInternalLink(
      link: InternalLinkType.fromJson(tdMapFromJson(json['link'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
