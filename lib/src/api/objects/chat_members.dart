import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat members
@immutable
final class ChatMembers extends TdObject {
  ChatMembers({required this.totalCount, required this.members});

  /// [totalCount] Approximate total number of chat members found
  final int totalCount;

  /// [members] A list of chat members
  final List<ChatMember> members;

  static const String constructor = 'chatMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'members': members.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembers(
      totalCount: (json['total_count'] as int?) ?? 0,
      members: List<ChatMember>.from(
        tdListFromJson(json['members'])
            .map((item) => ChatMember.fromJson(tdMapFromJson(item)))
            .whereType<ChatMember>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
