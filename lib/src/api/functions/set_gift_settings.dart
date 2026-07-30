import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes settings for gift receiving for the current user
/// Returns [Ok]
@immutable
final class SetGiftSettings extends TdFunction {
  SetGiftSettings({this.settings});

  /// [settings] The new settings
  final GiftSettings? settings;

  static const String constructor = 'setGiftSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'settings': settings?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
