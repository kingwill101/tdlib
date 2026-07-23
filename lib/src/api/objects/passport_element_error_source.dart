import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element
@immutable
sealed class PassportElementErrorSource extends TdObject {
  const PassportElementErrorSource();

  static const String constructor = 'passportElementErrorSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PassportElementErrorSourceDataField]
  /// [PassportElementErrorSourceFile]
  /// [PassportElementErrorSourceFiles]
  /// [PassportElementErrorSourceFrontSide]
  /// [PassportElementErrorSourceReverseSide]
  /// [PassportElementErrorSourceSelfie]
  /// [PassportElementErrorSourceTranslationFile]
  /// [PassportElementErrorSourceTranslationFiles]
  /// [PassportElementErrorSourceUnspecified]
  static PassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementErrorSourceDataField.constructor:
        return PassportElementErrorSourceDataField.fromJson(json);

      case PassportElementErrorSourceFile.constructor:
        return PassportElementErrorSourceFile.fromJson(json);

      case PassportElementErrorSourceFiles.constructor:
        return PassportElementErrorSourceFiles.fromJson(json);

      case PassportElementErrorSourceFrontSide.constructor:
        return PassportElementErrorSourceFrontSide.fromJson(json);

      case PassportElementErrorSourceReverseSide.constructor:
        return PassportElementErrorSourceReverseSide.fromJson(json);

      case PassportElementErrorSourceSelfie.constructor:
        return PassportElementErrorSourceSelfie.fromJson(json);

      case PassportElementErrorSourceTranslationFile.constructor:
        return PassportElementErrorSourceTranslationFile.fromJson(json);

      case PassportElementErrorSourceTranslationFiles.constructor:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);

      case PassportElementErrorSourceUnspecified.constructor:
        return PassportElementErrorSourceUnspecified.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// One of the data fields contains an error. The error will be considered
/// resolved when the value of the field changes
@immutable
final class PassportElementErrorSourceDataField
    extends PassportElementErrorSource {
  PassportElementErrorSourceDataField({required this.fieldName});

  /// [fieldName] Field name
  final String fieldName;

  static const String constructor = 'passportElementErrorSourceDataField';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'field_name': fieldName,
    '@type': constructor,
  };

  static PassportElementErrorSourceDataField? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceDataField(
      fieldName: (json['field_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file contains an error. The error will be considered resolved when the
/// file changes
@immutable
final class PassportElementErrorSourceFile extends PassportElementErrorSource {
  PassportElementErrorSourceFile({required this.fileIndex});

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String constructor = 'passportElementErrorSourceFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_index': fileIndex,
    '@type': constructor,
  };

  static PassportElementErrorSourceFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceFile(
      fileIndex: (json['file_index'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of attached files contains an error. The error will be considered
/// resolved when the list of files changes
@immutable
final class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  const PassportElementErrorSourceFiles();

  static const String constructor = 'passportElementErrorSourceFiles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFiles();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The front side of the document contains an error. The error will be
/// considered resolved when the file with the front side changes
@immutable
final class PassportElementErrorSourceFrontSide
    extends PassportElementErrorSource {
  const PassportElementErrorSourceFrontSide();

  static const String constructor = 'passportElementErrorSourceFrontSide';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceFrontSide? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFrontSide();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The reverse side of the document contains an error. The error will be
/// considered resolved when the file with the reverse side changes
@immutable
final class PassportElementErrorSourceReverseSide
    extends PassportElementErrorSource {
  const PassportElementErrorSourceReverseSide();

  static const String constructor = 'passportElementErrorSourceReverseSide';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceReverseSide? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceReverseSide();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The selfie with the document contains an error. The error will be
/// considered resolved when the file with the selfie changes
@immutable
final class PassportElementErrorSourceSelfie
    extends PassportElementErrorSource {
  const PassportElementErrorSourceSelfie();

  static const String constructor = 'passportElementErrorSourceSelfie';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceSelfie? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceSelfie();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// One of files with the translation of the document contains an error. The
/// error will be considered resolved when the file changes
@immutable
final class PassportElementErrorSourceTranslationFile
    extends PassportElementErrorSource {
  PassportElementErrorSourceTranslationFile({required this.fileIndex});

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String constructor = 'passportElementErrorSourceTranslationFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_index': fileIndex,
    '@type': constructor,
  };

  static PassportElementErrorSourceTranslationFile? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceTranslationFile(
      fileIndex: (json['file_index'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The translation of the document contains an error. The error will be
/// considered resolved when the list of translation files changes
@immutable
final class PassportElementErrorSourceTranslationFiles
    extends PassportElementErrorSource {
  const PassportElementErrorSourceTranslationFiles();

  static const String constructor =
      'passportElementErrorSourceTranslationFiles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceTranslationFiles? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceTranslationFiles();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
@immutable
final class PassportElementErrorSourceUnspecified
    extends PassportElementErrorSource {
  const PassportElementErrorSourceUnspecified();

  static const String constructor = 'passportElementErrorSourceUnspecified';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementErrorSourceUnspecified? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceUnspecified();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
