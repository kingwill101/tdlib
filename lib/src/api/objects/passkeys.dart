import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of passkeys
@immutable
final class Passkeys extends TdObject {
  Passkeys({required this.passkeys});

  /// [passkeys] List of passkeys
  final List<Passkey> passkeys;

  static const String constructor = 'passkeys';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'passkeys': passkeys.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Passkeys? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Passkeys(
      passkeys: List<Passkey>.from(
        tdListFromJson(json['passkeys'])
            .map((item) => Passkey.fromJson(tdMapFromJson(item)))
            .whereType<Passkey>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
