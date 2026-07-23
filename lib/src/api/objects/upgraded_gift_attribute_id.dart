import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains identifier of an upgraded gift attribute to search for
@immutable
sealed class UpgradedGiftAttributeId extends TdObject {
  const UpgradedGiftAttributeId();

  static const String constructor = 'upgradedGiftAttributeId';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UpgradedGiftAttributeIdBackdrop]
  /// [UpgradedGiftAttributeIdModel]
  /// [UpgradedGiftAttributeIdSymbol]
  static UpgradedGiftAttributeId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftAttributeIdBackdrop.constructor:
        return UpgradedGiftAttributeIdBackdrop.fromJson(json);

      case UpgradedGiftAttributeIdModel.constructor:
        return UpgradedGiftAttributeIdModel.fromJson(json);

      case UpgradedGiftAttributeIdSymbol.constructor:
        return UpgradedGiftAttributeIdSymbol.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Identifier of a gift backdrop
@immutable
final class UpgradedGiftAttributeIdBackdrop extends UpgradedGiftAttributeId {
  UpgradedGiftAttributeIdBackdrop({required this.backdropId});

  /// [backdropId] Identifier of the backdrop
  final int backdropId;

  static const String constructor = 'upgradedGiftAttributeIdBackdrop';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'backdrop_id': backdropId,
    '@type': constructor,
  };

  static UpgradedGiftAttributeIdBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdBackdrop(
      backdropId: (json['backdrop_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Identifier of a gift model
@immutable
final class UpgradedGiftAttributeIdModel extends UpgradedGiftAttributeId {
  UpgradedGiftAttributeIdModel({required this.stickerId});

  /// [stickerId] Identifier of the sticker representing the model
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdModel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_id': stickerId.toString(),
    '@type': constructor,
  };

  static UpgradedGiftAttributeIdModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdModel(
      stickerId:
          int.tryParse((json['sticker_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Identifier of a gift symbol
@immutable
final class UpgradedGiftAttributeIdSymbol extends UpgradedGiftAttributeId {
  UpgradedGiftAttributeIdSymbol({required this.stickerId});

  /// [stickerId] Identifier of the sticker representing the symbol
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdSymbol';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_id': stickerId.toString(),
    '@type': constructor,
  };

  static UpgradedGiftAttributeIdSymbol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdSymbol(
      stickerId:
          int.tryParse((json['sticker_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
