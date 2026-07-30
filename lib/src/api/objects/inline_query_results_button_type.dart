import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents type of button in results of inline query
@immutable
sealed class InlineQueryResultsButtonType extends TdObject {
  const InlineQueryResultsButtonType();

  static const String constructor = 'inlineQueryResultsButtonType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InlineQueryResultsButtonTypeStartBot]
  /// [InlineQueryResultsButtonTypeWebApp]
  static InlineQueryResultsButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineQueryResultsButtonTypeStartBot.constructor:
        return InlineQueryResultsButtonTypeStartBot.fromJson(json);

      case InlineQueryResultsButtonTypeWebApp.constructor:
        return InlineQueryResultsButtonTypeWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes the button that opens a private chat with the bot and sends a
/// start message to the bot with the given parameter
@immutable
final class InlineQueryResultsButtonTypeStartBot
    extends InlineQueryResultsButtonType {
  InlineQueryResultsButtonTypeStartBot({required this.parameter});

  /// [parameter] The parameter for the bot start message
  final String parameter;

  static const String constructor = 'inlineQueryResultsButtonTypeStartBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameter': parameter,
    '@type': constructor,
  };

  static InlineQueryResultsButtonTypeStartBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButtonTypeStartBot(
      parameter: (json['parameter'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes the button that opens a Web App by calling getWebAppUrl
@immutable
final class InlineQueryResultsButtonTypeWebApp
    extends InlineQueryResultsButtonType {
  InlineQueryResultsButtonTypeWebApp({required this.url});

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  static const String constructor = 'inlineQueryResultsButtonTypeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InlineQueryResultsButtonTypeWebApp? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButtonTypeWebApp(
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
