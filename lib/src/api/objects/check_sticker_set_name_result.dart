import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether a name can be used for a new sticker
/// set
@immutable
sealed class CheckStickerSetNameResult extends TdObject {
  const CheckStickerSetNameResult();

  static const String constructor = 'checkStickerSetNameResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CheckStickerSetNameResultNameInvalid]
  /// [CheckStickerSetNameResultNameOccupied]
  /// [CheckStickerSetNameResultOk]
  static CheckStickerSetNameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CheckStickerSetNameResultNameInvalid.constructor:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);

      case CheckStickerSetNameResultNameOccupied.constructor:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);

      case CheckStickerSetNameResultOk.constructor:
        return CheckStickerSetNameResultOk.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The name is invalid
@immutable
final class CheckStickerSetNameResultNameInvalid
    extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameInvalid();

  static const String constructor = 'checkStickerSetNameResultNameInvalid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckStickerSetNameResultNameInvalid? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameInvalid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The name is occupied
@immutable
final class CheckStickerSetNameResultNameOccupied
    extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameOccupied();

  static const String constructor = 'checkStickerSetNameResultNameOccupied';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckStickerSetNameResultNameOccupied? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameOccupied();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The name can be set
@immutable
final class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultOk();

  static const String constructor = 'checkStickerSetNameResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckStickerSetNameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
