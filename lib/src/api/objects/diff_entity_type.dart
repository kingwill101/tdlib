import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a change of a text
@immutable
sealed class DiffEntityType extends TdObject {
  const DiffEntityType();

  static const String constructor = 'diffEntityType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DiffEntityTypeDelete]
  /// [DiffEntityTypeInsert]
  /// [DiffEntityTypeReplace]
  static DiffEntityType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DiffEntityTypeDelete.constructor:
        return DiffEntityTypeDelete.fromJson(json);

      case DiffEntityTypeInsert.constructor:
        return DiffEntityTypeInsert.fromJson(json);

      case DiffEntityTypeReplace.constructor:
        return DiffEntityTypeReplace.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Removal of some text
@immutable
final class DiffEntityTypeDelete extends DiffEntityType {
  const DiffEntityTypeDelete();

  static const String constructor = 'diffEntityTypeDelete';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DiffEntityTypeDelete? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DiffEntityTypeDelete();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Addition of some text
@immutable
final class DiffEntityTypeInsert extends DiffEntityType {
  const DiffEntityTypeInsert();

  static const String constructor = 'diffEntityTypeInsert';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DiffEntityTypeInsert? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DiffEntityTypeInsert();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Change of some text
@immutable
final class DiffEntityTypeReplace extends DiffEntityType {
  DiffEntityTypeReplace({required this.oldText});

  /// [oldText] The old text
  final String oldText;

  static const String constructor = 'diffEntityTypeReplace';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_text': oldText,
    '@type': constructor,
  };

  static DiffEntityTypeReplace? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiffEntityTypeReplace(oldText: (json['old_text'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
