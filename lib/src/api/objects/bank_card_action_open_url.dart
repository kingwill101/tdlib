import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an action associated with a bank card number
@immutable
final class BankCardActionOpenUrl extends TdObject {
  BankCardActionOpenUrl({required this.text, required this.url});

  /// [text] Action text
  final String text;

  /// [url] The URL to be opened
  final String url;

  static const String constructor = 'bankCardActionOpenUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'url': url,
    '@type': constructor,
  };

  static BankCardActionOpenUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardActionOpenUrl(
      text: (json['text'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
