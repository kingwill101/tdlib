import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an inline button of type
/// inlineKeyboardButtonTypeLoginUrl or an external link
@immutable
sealed class LoginUrlInfo extends TdObject {
  const LoginUrlInfo();

  static const String constructor = 'loginUrlInfo';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [LoginUrlInfoOpen]
  /// [LoginUrlInfoRequestConfirmation]
  static LoginUrlInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LoginUrlInfoOpen.constructor:
        return LoginUrlInfoOpen.fromJson(json);

      case LoginUrlInfoRequestConfirmation.constructor:
        return LoginUrlInfoRequestConfirmation.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An HTTP URL needs to be open
@immutable
final class LoginUrlInfoOpen extends LoginUrlInfo {
  LoginUrlInfoOpen({required this.url, required this.skipConfirmation});

  /// [url] The URL to open
  final String url;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL
  /// confirmation
  final bool skipConfirmation;

  static const String constructor = 'loginUrlInfoOpen';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'skip_confirmation': skipConfirmation,
    '@type': constructor,
  };

  static LoginUrlInfoOpen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoOpen(
      url: (json['url'] as String?) ?? '',
      skipConfirmation: (json['skip_confirmation'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authorization confirmation dialog needs to be shown to the user
@immutable
final class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
  });

  /// [url] An HTTP URL to be opened
  final String url;

  /// [domain] A domain of the URL
  final String domain;

  /// [botUserId] User identifier of a bot linked with the website
  final int botUserId;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// the bot to send them messages
  final bool requestWriteAccess;

  static const String constructor = 'loginUrlInfoRequestConfirmation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'domain': domain,
    'bot_user_id': botUserId,
    'request_write_access': requestWriteAccess,
    '@type': constructor,
  };

  static LoginUrlInfoRequestConfirmation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoRequestConfirmation(
      url: (json['url'] as String?) ?? '',
      domain: (json['domain'] as String?) ?? '',
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      requestWriteAccess: (json['request_write_access'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
