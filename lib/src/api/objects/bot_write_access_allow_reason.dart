import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a reason why a bot was allowed to write messages to the current
/// user
@immutable
sealed class BotWriteAccessAllowReason extends TdObject {
  const BotWriteAccessAllowReason();

  static const String constructor = 'botWriteAccessAllowReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BotWriteAccessAllowReasonAcceptedRequest]
  /// [BotWriteAccessAllowReasonAddedToAttachmentMenu]
  /// [BotWriteAccessAllowReasonConnectedWebsite]
  /// [BotWriteAccessAllowReasonLaunchedWebApp]
  static BotWriteAccessAllowReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BotWriteAccessAllowReasonAcceptedRequest.constructor:
        return BotWriteAccessAllowReasonAcceptedRequest.fromJson(json);

      case BotWriteAccessAllowReasonAddedToAttachmentMenu.constructor:
        return BotWriteAccessAllowReasonAddedToAttachmentMenu.fromJson(json);

      case BotWriteAccessAllowReasonConnectedWebsite.constructor:
        return BotWriteAccessAllowReasonConnectedWebsite.fromJson(json);

      case BotWriteAccessAllowReasonLaunchedWebApp.constructor:
        return BotWriteAccessAllowReasonLaunchedWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user accepted bot's request to send messages with
/// allowBotToSendMessages
@immutable
final class BotWriteAccessAllowReasonAcceptedRequest
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonAcceptedRequest();

  static const String constructor = 'botWriteAccessAllowReasonAcceptedRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotWriteAccessAllowReasonAcceptedRequest? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const BotWriteAccessAllowReasonAcceptedRequest();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user added the bot to attachment or side menu using
/// toggleBotIsAddedToAttachmentMenu
@immutable
final class BotWriteAccessAllowReasonAddedToAttachmentMenu
    extends BotWriteAccessAllowReason {
  const BotWriteAccessAllowReasonAddedToAttachmentMenu();

  static const String constructor =
      'botWriteAccessAllowReasonAddedToAttachmentMenu';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotWriteAccessAllowReasonAddedToAttachmentMenu? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const BotWriteAccessAllowReasonAddedToAttachmentMenu();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user connected a website by logging in using Telegram Login Widget on
/// it
@immutable
final class BotWriteAccessAllowReasonConnectedWebsite
    extends BotWriteAccessAllowReason {
  BotWriteAccessAllowReasonConnectedWebsite({required this.domainName});

  /// [domainName] Domain name of the connected website
  final String domainName;

  static const String constructor = 'botWriteAccessAllowReasonConnectedWebsite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'domain_name': domainName,
    '@type': constructor,
  };

  static BotWriteAccessAllowReasonConnectedWebsite? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return BotWriteAccessAllowReasonConnectedWebsite(
      domainName: (json['domain_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user launched a Web App using getWebAppLinkUrl
@immutable
final class BotWriteAccessAllowReasonLaunchedWebApp
    extends BotWriteAccessAllowReason {
  BotWriteAccessAllowReasonLaunchedWebApp({this.webApp});

  /// [webApp] Information about the Web App
  final WebApp? webApp;

  static const String constructor = 'botWriteAccessAllowReasonLaunchedWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'web_app': webApp?.toJson(),
    '@type': constructor,
  };

  static BotWriteAccessAllowReasonLaunchedWebApp? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return BotWriteAccessAllowReasonLaunchedWebApp(
      webApp: WebApp.fromJson(tdMapFromJson(json['web_app'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
