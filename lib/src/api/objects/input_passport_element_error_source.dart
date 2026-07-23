import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
@immutable
sealed class InputPassportElementErrorSource extends TdObject {
  const InputPassportElementErrorSource();

  static const String constructor = 'inputPassportElementErrorSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPassportElementErrorSourceDataField]
  /// [InputPassportElementErrorSourceFile]
  /// [InputPassportElementErrorSourceFiles]
  /// [InputPassportElementErrorSourceFrontSide]
  /// [InputPassportElementErrorSourceReverseSide]
  /// [InputPassportElementErrorSourceSelfie]
  /// [InputPassportElementErrorSourceTranslationFile]
  /// [InputPassportElementErrorSourceTranslationFiles]
  /// [InputPassportElementErrorSourceUnspecified]
  static InputPassportElementErrorSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPassportElementErrorSourceDataField.constructor:
        return InputPassportElementErrorSourceDataField.fromJson(json);

      case InputPassportElementErrorSourceFile.constructor:
        return InputPassportElementErrorSourceFile.fromJson(json);

      case InputPassportElementErrorSourceFiles.constructor:
        return InputPassportElementErrorSourceFiles.fromJson(json);

      case InputPassportElementErrorSourceFrontSide.constructor:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);

      case InputPassportElementErrorSourceReverseSide.constructor:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);

      case InputPassportElementErrorSourceSelfie.constructor:
        return InputPassportElementErrorSourceSelfie.fromJson(json);

      case InputPassportElementErrorSourceTranslationFile.constructor:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);

      case InputPassportElementErrorSourceTranslationFiles.constructor:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);

      case InputPassportElementErrorSourceUnspecified.constructor:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A data field contains an error. The error is considered resolved when the
/// field's value changes
@immutable
final class InputPassportElementErrorSourceDataField
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceDataField({
    required this.fieldName,
    required this.dataHash,
  });

  /// [fieldName] Field name
  final String fieldName;

  /// [dataHash] Current data hash
  final String dataHash;

  static const String constructor = 'inputPassportElementErrorSourceDataField';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'field_name': fieldName,
    'data_hash': dataHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceDataField? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceDataField(
      fieldName: (json['field_name'] as String?) ?? '',
      dataHash: (json['data_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file contains an error. The error is considered resolved when the file
/// changes
@immutable
final class InputPassportElementErrorSourceFile
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFile({required this.fileHash});

  /// [fileHash] Current hash of the file which has the error
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hash': fileHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceFile? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFile(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of attached files contains an error. The error is considered
/// resolved when the file list changes
@immutable
final class InputPassportElementErrorSourceFiles
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFiles({required this.fileHashes});

  /// [fileHashes] Current hashes of all attached files
  final List<String> fileHashes;

  static const String constructor = 'inputPassportElementErrorSourceFiles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hashes': fileHashes.map((item) => item).toList(),
    '@type': constructor,
  };

  static InputPassportElementErrorSourceFiles? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFiles(
      fileHashes: List<String>.from(
        tdListFromJson(
          json['file_hashes'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The front side of the document contains an error. The error is considered
/// resolved when the file with the front side of the document changes
@immutable
final class InputPassportElementErrorSourceFrontSide
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceFrontSide({required this.fileHash});

  /// [fileHash] Current hash of the file containing the front side
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceFrontSide';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hash': fileHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceFrontSide? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceFrontSide(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The reverse side of the document contains an error. The error is
/// considered resolved when the file with the reverse side of the document
/// changes
@immutable
final class InputPassportElementErrorSourceReverseSide
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceReverseSide({required this.fileHash});

  /// [fileHash] Current hash of the file containing the reverse side
  final String fileHash;

  static const String constructor =
      'inputPassportElementErrorSourceReverseSide';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hash': fileHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceReverseSide? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceReverseSide(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The selfie contains an error. The error is considered resolved when the
/// file with the selfie changes
@immutable
final class InputPassportElementErrorSourceSelfie
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceSelfie({required this.fileHash});

  /// [fileHash] Current hash of the file containing the selfie
  final String fileHash;

  static const String constructor = 'inputPassportElementErrorSourceSelfie';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hash': fileHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceSelfie? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceSelfie(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// One of the files containing the translation of the document contains an
/// error. The error is considered resolved when the file with the translation
/// changes
@immutable
final class InputPassportElementErrorSourceTranslationFile
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceTranslationFile({required this.fileHash});

  /// [fileHash] Current hash of the file containing the translation
  final String fileHash;

  static const String constructor =
      'inputPassportElementErrorSourceTranslationFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hash': fileHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceTranslationFile? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFile(
      fileHash: (json['file_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The translation of the document contains an error. The error is considered
/// resolved when the list of files changes
@immutable
final class InputPassportElementErrorSourceTranslationFiles
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceTranslationFiles({required this.fileHashes});

  /// [fileHashes] Current hashes of all files with the translation
  final List<String> fileHashes;

  static const String constructor =
      'inputPassportElementErrorSourceTranslationFiles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_hashes': fileHashes.map((item) => item).toList(),
    '@type': constructor,
  };

  static InputPassportElementErrorSourceTranslationFiles? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFiles(
      fileHashes: List<String>.from(
        tdListFromJson(
          json['file_hashes'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
@immutable
final class InputPassportElementErrorSourceUnspecified
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceUnspecified({required this.elementHash});

  /// [elementHash] Current hash of the entire element
  final String elementHash;

  static const String constructor =
      'inputPassportElementErrorSourceUnspecified';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'element_hash': elementHash,
    '@type': constructor,
  };

  static InputPassportElementErrorSourceUnspecified? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceUnspecified(
      elementHash: (json['element_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
