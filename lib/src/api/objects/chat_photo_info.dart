import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about the photo of a chat
@immutable
final class ChatPhotoInfo extends TdObject {
  ChatPhotoInfo({
    this.small,
    this.big,
    this.minithumbnail,
    required this.hasAnimation,
    required this.isPersonal,
  });

  /// [small] A small (160x160) chat photo variant in JPEG format. The file can
  /// be downloaded only before the photo is changed
  final File? small;

  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be
  /// downloaded only before the photo is changed
  final File? big;

  /// [minithumbnail] Chat photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  /// [isPersonal] True, if the photo is visible only for the current user
  final bool isPersonal;

  static const String constructor = 'chatPhotoInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'small': small?.toJson(),
    'big': big?.toJson(),
    'minithumbnail': minithumbnail?.toJson(),
    'has_animation': hasAnimation,
    'is_personal': isPersonal,
    '@type': constructor,
  };

  static ChatPhotoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoInfo(
      small: File.fromJson(tdMapFromJson(json['small'])),
      big: File.fromJson(tdMapFromJson(json['big'])),
      minithumbnail: Minithumbnail.fromJson(
        tdMapFromJson(json['minithumbnail']),
      ),
      hasAnimation: (json['has_animation'] as bool?) ?? false,
      isPersonal: (json['is_personal'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
