import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about a bank card
@immutable
final class BankCardInfo extends TdObject {
  BankCardInfo({required this.title, required this.actions});

  /// [title] Title of the bank card description
  final String title;

  /// [actions] Actions that can be done with the bank card number
  final List<BankCardActionOpenUrl> actions;

  static const String constructor = 'bankCardInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'actions': actions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BankCardInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardInfo(
      title: (json['title'] as String?) ?? '',
      actions: List<BankCardActionOpenUrl>.from(
        tdListFromJson(json['actions'])
            .map((item) => BankCardActionOpenUrl.fromJson(tdMapFromJson(item)))
            .whereType<BankCardActionOpenUrl>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
