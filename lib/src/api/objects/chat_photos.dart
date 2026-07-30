import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat or user profile photos
@immutable
final class ChatPhotos extends TdObject {
  ChatPhotos({required this.totalCount, required this.photos});

  /// [totalCount] Total number of photos
  final int totalCount;

  /// [photos] List of photos
  final List<ChatPhoto> photos;

  static const String constructor = 'chatPhotos';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'photos': photos.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatPhotos? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotos(
      totalCount: (json['total_count'] as int?) ?? 0,
      photos: List<ChatPhoto>.from(
        tdListFromJson(json['photos'])
            .map((item) => ChatPhoto.fromJson(tdMapFromJson(item)))
            .whereType<ChatPhoto>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
