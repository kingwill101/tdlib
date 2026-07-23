import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Part of the face, relative to which a mask is placed
@immutable
sealed class MaskPoint extends TdObject {
  const MaskPoint();

  static const String constructor = 'maskPoint';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MaskPointChin]
  /// [MaskPointEyes]
  /// [MaskPointForehead]
  /// [MaskPointMouth]
  static MaskPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MaskPointChin.constructor:
        return MaskPointChin.fromJson(json);

      case MaskPointEyes.constructor:
        return MaskPointEyes.fromJson(json);

      case MaskPointForehead.constructor:
        return MaskPointForehead.fromJson(json);

      case MaskPointMouth.constructor:
        return MaskPointMouth.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The mask is placed relatively to the chin
@immutable
final class MaskPointChin extends MaskPoint {
  const MaskPointChin();

  static const String constructor = 'maskPointChin';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MaskPointChin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointChin();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The mask is placed relatively to the eyes
@immutable
final class MaskPointEyes extends MaskPoint {
  const MaskPointEyes();

  static const String constructor = 'maskPointEyes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MaskPointEyes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointEyes();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The mask is placed relatively to the forehead
@immutable
final class MaskPointForehead extends MaskPoint {
  const MaskPointForehead();

  static const String constructor = 'maskPointForehead';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MaskPointForehead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointForehead();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The mask is placed relatively to the mouth
@immutable
final class MaskPointMouth extends MaskPoint {
  const MaskPointMouth();

  static const String constructor = 'maskPointMouth';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MaskPointMouth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointMouth();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
