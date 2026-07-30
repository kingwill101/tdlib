import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the exact storage usage statistics split by chats and file type
@immutable
final class StorageStatistics extends TdObject {
  StorageStatistics({
    required this.size,
    required this.count,
    required this.byChat,
  });

  /// [size] Total size of files, in bytes
  final int size;

  /// [count] Total number of files
  final int count;

  /// [byChat] Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  static const String constructor = 'storageStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'size': size,
    'count': count,
    'by_chat': byChat.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StorageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatistics(
      size: (json['size'] as int?) ?? 0,
      count: (json['count'] as int?) ?? 0,
      byChat: List<StorageStatisticsByChat>.from(
        tdListFromJson(json['by_chat'])
            .map(
              (item) => StorageStatisticsByChat.fromJson(tdMapFromJson(item)),
            )
            .whereType<StorageStatisticsByChat>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
