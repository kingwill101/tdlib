import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about background to set
@immutable
sealed class InputBackground extends TdObject {
  const InputBackground();

  static const String constructor = 'inputBackground';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputBackgroundLocal]
  /// [InputBackgroundPrevious]
  /// [InputBackgroundRemote]
  static InputBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputBackgroundLocal.constructor:
        return InputBackgroundLocal.fromJson(json);

      case InputBackgroundPrevious.constructor:
        return InputBackgroundPrevious.fromJson(json);

      case InputBackgroundRemote.constructor:
        return InputBackgroundRemote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A background from a local file
@immutable
final class InputBackgroundLocal extends InputBackground {
  InputBackgroundLocal({this.background});

  /// [background] Background file to use. Only inputFileLocal and
  /// inputFileGenerated are supported. The file must be in JPEG format for
  /// wallpapers and in PNG format for patterns
  final InputFile? background;

  static const String constructor = 'inputBackgroundLocal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'background': background?.toJson(),
    '@type': constructor,
  };

  static InputBackgroundLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundLocal(
      background: InputFile.fromJson(tdMapFromJson(json['background'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A background previously set in the chat; for chat backgrounds only
@immutable
final class InputBackgroundPrevious extends InputBackground {
  InputBackgroundPrevious({required this.messageId});

  /// [messageId] Identifier of the message with the background
  final int messageId;

  static const String constructor = 'inputBackgroundPrevious';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    '@type': constructor,
  };

  static InputBackgroundPrevious? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundPrevious(
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A background from the server
@immutable
final class InputBackgroundRemote extends InputBackground {
  InputBackgroundRemote({required this.backgroundId});

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String constructor = 'inputBackgroundRemote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'background_id': backgroundId.toString(),
    '@type': constructor,
  };

  static InputBackgroundRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundRemote(
      backgroundId:
          int.tryParse((json['background_id'] as dynamic)?.toString() ?? '') ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
