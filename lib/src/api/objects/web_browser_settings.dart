import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes web browser settings
@immutable
final class WebBrowserSettings extends TdObject {
  WebBrowserSettings({
    required this.openExternalBrowser,
    required this.externalExceptions,
    required this.inAppExceptions,
    required this.displayCloseButton,
  });

  /// [openExternalBrowser] True, if links are opened in an external browser by
  /// default
  final bool openExternalBrowser;

  /// [externalExceptions] The list of websites which must always be opened in
  /// an external browser
  final List<WebDomainException> externalExceptions;

  /// [inAppExceptions] The list of websites which must always be opened in the
  /// in-app browser
  final List<WebDomainException> inAppExceptions;

  /// [displayCloseButton] True, if a close button must be shown in the in-app
  /// browser; for Android app only
  final bool displayCloseButton;

  static const String constructor = 'webBrowserSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'open_external_browser': openExternalBrowser,
    'external_exceptions': externalExceptions
        .map((item) => item.toJson())
        .toList(),
    'in_app_exceptions': inAppExceptions.map((item) => item.toJson()).toList(),
    'display_close_button': displayCloseButton,
    '@type': constructor,
  };

  static WebBrowserSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebBrowserSettings(
      openExternalBrowser: (json['open_external_browser'] as bool?) ?? false,
      externalExceptions: List<WebDomainException>.from(
        tdListFromJson(json['external_exceptions'])
            .map((item) => WebDomainException.fromJson(tdMapFromJson(item)))
            .whereType<WebDomainException>(),
      ),
      inAppExceptions: List<WebDomainException>.from(
        tdListFromJson(json['in_app_exceptions'])
            .map((item) => WebDomainException.fromJson(tdMapFromJson(item)))
            .whereType<WebDomainException>(),
      ),
      displayCloseButton: (json['display_close_button'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
