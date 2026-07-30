import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an in-store transaction
@immutable
sealed class StoreTransaction extends TdObject {
  const StoreTransaction();

  static const String constructor = 'storeTransaction';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoreTransactionAppStore]
  /// [StoreTransactionGooglePlay]
  static StoreTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoreTransactionAppStore.constructor:
        return StoreTransactionAppStore.fromJson(json);

      case StoreTransactionGooglePlay.constructor:
        return StoreTransactionGooglePlay.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A purchase through App Store
@immutable
final class StoreTransactionAppStore extends StoreTransaction {
  StoreTransactionAppStore({required this.receipt});

  /// [receipt] App Store receipt
  final String receipt;

  static const String constructor = 'storeTransactionAppStore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'receipt': receipt,
    '@type': constructor,
  };

  static StoreTransactionAppStore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoreTransactionAppStore(
      receipt: (json['receipt'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A purchase through Google Play
@immutable
final class StoreTransactionGooglePlay extends StoreTransaction {
  StoreTransactionGooglePlay({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
  });

  /// [packageName] Application package name
  final String packageName;

  /// [storeProductId] Identifier of the purchased store product
  final String storeProductId;

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;

  static const String constructor = 'storeTransactionGooglePlay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'package_name': packageName,
    'store_product_id': storeProductId,
    'purchase_token': purchaseToken,
    '@type': constructor,
  };

  static StoreTransactionGooglePlay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoreTransactionGooglePlay(
      packageName: (json['package_name'] as String?) ?? '',
      storeProductId: (json['store_product_id'] as String?) ?? '',
      purchaseToken: (json['purchase_token'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
