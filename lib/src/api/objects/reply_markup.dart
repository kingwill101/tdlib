import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a description of a custom keyboard and actions that can be done
/// with it to quickly reply to bots
@immutable
sealed class ReplyMarkup extends TdObject {
  const ReplyMarkup();

  static const String constructor = 'replyMarkup';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReplyMarkupForceReply]
  /// [ReplyMarkupInlineKeyboard]
  /// [ReplyMarkupRemoveKeyboard]
  /// [ReplyMarkupShowKeyboard]
  static ReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReplyMarkupForceReply.constructor:
        return ReplyMarkupForceReply.fromJson(json);

      case ReplyMarkupInlineKeyboard.constructor:
        return ReplyMarkupInlineKeyboard.fromJson(json);

      case ReplyMarkupRemoveKeyboard.constructor:
        return ReplyMarkupRemoveKeyboard.fromJson(json);

      case ReplyMarkupShowKeyboard.constructor:
        return ReplyMarkupShowKeyboard.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Instructs application to force a reply to this message
@immutable
final class ReplyMarkupForceReply extends ReplyMarkup {
  ReplyMarkupForceReply({
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [isPersonal] True, if a forced reply must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the forced reply
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String constructor = 'replyMarkupForceReply';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
    '@type': constructor,
  };

  static ReplyMarkupForceReply? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupForceReply(
      isPersonal: (json['is_personal'] as bool?) ?? false,
      inputFieldPlaceholder: (json['input_field_placeholder'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains an inline keyboard layout
@immutable
final class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  ReplyMarkupInlineKeyboard({required this.rows});

  /// [rows] A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;

  static const String constructor = 'replyMarkupInlineKeyboard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'rows': rows
        .map((item) => item.map((item) => item.toJson()).toList())
        .toList(),
    '@type': constructor,
  };

  static ReplyMarkupInlineKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupInlineKeyboard(
      rows: List<List<InlineKeyboardButton>>.from(
        tdListFromJson(json['rows'])
            .map(
              (item) => List<InlineKeyboardButton>.from(
                tdListFromJson(json['List<InlineKeyboardButton>'])
                    .map(
                      (item) =>
                          InlineKeyboardButton.fromJson(tdMapFromJson(item)),
                    )
                    .whereType<InlineKeyboardButton>(),
              ),
            )
            .whereType<List<InlineKeyboardButton>>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Instructs application to remove the keyboard once this message has been
/// received. This kind of keyboard can't be received in an incoming message;
/// instead, updateChatReplyMarkup with reply_markup_message == null will be
/// sent
@immutable
final class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  ReplyMarkupRemoveKeyboard({required this.isPersonal});

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users
  /// or the target user of a reply
  final bool isPersonal;

  static const String constructor = 'replyMarkupRemoveKeyboard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_personal': isPersonal,
    '@type': constructor,
  };

  static ReplyMarkupRemoveKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupRemoveKeyboard(
      isPersonal: (json['is_personal'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains a custom keyboard layout to quickly reply to bots
@immutable
final class ReplyMarkupShowKeyboard extends ReplyMarkup {
  ReplyMarkupShowKeyboard({
    required this.rows,
    required this.isPersistent,
    required this.resizeKeyboard,
    required this.oneTime,
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });

  /// [rows] A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// [isPersistent] True, if the keyboard is expected to always be shown when
  /// the ordinary keyboard is hidden
  final bool isPersistent;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard
  /// vertically
  final bool resizeKeyboard;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// [isPersonal] True, if the keyboard must automatically be shown to the
  /// current user. For outgoing messages, specify true to show the keyboard
  /// only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// [inputFieldPlaceholder] If non-empty, the placeholder to be shown in the
  /// input field when the keyboard is active; 0-64 characters
  final String inputFieldPlaceholder;

  static const String constructor = 'replyMarkupShowKeyboard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'rows': rows
        .map((item) => item.map((item) => item.toJson()).toList())
        .toList(),
    'is_persistent': isPersistent,
    'resize_keyboard': resizeKeyboard,
    'one_time': oneTime,
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
    '@type': constructor,
  };

  static ReplyMarkupShowKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupShowKeyboard(
      rows: List<List<KeyboardButton>>.from(
        tdListFromJson(json['rows'])
            .map(
              (item) => List<KeyboardButton>.from(
                tdListFromJson(json['List<KeyboardButton>'])
                    .map((item) => KeyboardButton.fromJson(tdMapFromJson(item)))
                    .whereType<KeyboardButton>(),
              ),
            )
            .whereType<List<KeyboardButton>>(),
      ),
      isPersistent: (json['is_persistent'] as bool?) ?? false,
      resizeKeyboard: (json['resize_keyboard'] as bool?) ?? false,
      oneTime: (json['one_time'] as bool?) ?? false,
      isPersonal: (json['is_personal'] as bool?) ?? false,
      inputFieldPlaceholder: (json['input_field_placeholder'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
