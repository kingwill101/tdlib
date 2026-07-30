import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a collectible item that can be purchased at https://fragment.com
@immutable
sealed class CollectibleItemType extends TdObject {
  const CollectibleItemType();

  static const String constructor = 'collectibleItemType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CollectibleItemTypePhoneNumber]
  /// [CollectibleItemTypeUsername]
  static CollectibleItemType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CollectibleItemTypePhoneNumber.constructor:
        return CollectibleItemTypePhoneNumber.fromJson(json);

      case CollectibleItemTypeUsername.constructor:
        return CollectibleItemTypeUsername.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A phone number
@immutable
final class CollectibleItemTypePhoneNumber extends CollectibleItemType {
  CollectibleItemTypePhoneNumber({required this.phoneNumber});

  /// [phoneNumber] The phone number
  final String phoneNumber;

  static const String constructor = 'collectibleItemTypePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number': phoneNumber,
    '@type': constructor,
  };

  static CollectibleItemTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemTypePhoneNumber(
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A username
@immutable
final class CollectibleItemTypeUsername extends CollectibleItemType {
  CollectibleItemTypeUsername({required this.username});

  /// [username] The username
  final String username;

  static const String constructor = 'collectibleItemTypeUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    '@type': constructor,
  };

  static CollectibleItemTypeUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CollectibleItemTypeUsername(
      username: (json['username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
