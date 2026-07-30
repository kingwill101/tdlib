import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user profile photo
@immutable
final class ProfilePhoto extends TdObject {
  ProfilePhoto({
    required this.id,
    this.small,
    this.big,
    this.minithumbnail,
    required this.hasAnimation,
    required this.isPersonal,
  });

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo
  /// in a list of user profile photos
  final int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded
  /// only before the photo is changed
  final File? small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only
  /// before the photo is changed
  final File? big;

  /// [minithumbnail] User profile photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  /// [isPersonal] True, if the photo is visible only for the current user
  final bool isPersonal;

  static const String constructor = 'profilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'small': small?.toJson(),
    'big': big?.toJson(),
    'minithumbnail': minithumbnail?.toJson(),
    'has_animation': hasAnimation,
    'is_personal': isPersonal,
    '@type': constructor,
  };

  static ProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfilePhoto(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
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
