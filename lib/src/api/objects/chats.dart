import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chats
@immutable
final class Chats extends TdObject {
  Chats({required this.totalCount, required this.chatIds});

  /// [totalCount] Approximate total number of chats found
  final int totalCount;

  /// [chatIds] List of chat identifiers
  final List<int> chatIds;

  static const String constructor = 'chats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'chat_ids': chatIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static Chats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chats(
      totalCount: (json['total_count'] as int?) ?? 0,
      chatIds: List<int>.from(
        tdListFromJson(
          json['chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
