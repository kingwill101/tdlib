import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the storage usage statistics for a specific chat
@immutable
final class StorageStatisticsByChat extends TdObject {
  StorageStatisticsByChat({
    required this.chatId,
    required this.size,
    required this.count,
    required this.byFileType,
  });

  /// [chatId] Chat identifier; 0 if none
  final int chatId;

  /// [size] Total size of the files in the chat, in bytes
  final int size;

  /// [count] Total number of files in the chat
  final int count;

  /// [byFileType] Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;

  static const String constructor = 'storageStatisticsByChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'size': size,
    'count': count,
    'by_file_type': byFileType.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StorageStatisticsByChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByChat(
      chatId: (json['chat_id'] as int?) ?? 0,
      size: (json['size'] as int?) ?? 0,
      count: (json['count'] as int?) ?? 0,
      byFileType: List<StorageStatisticsByFileType>.from(
        tdListFromJson(json['by_file_type'])
            .map(
              (item) =>
                  StorageStatisticsByFileType.fromJson(tdMapFromJson(item)),
            )
            .whereType<StorageStatisticsByFileType>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
