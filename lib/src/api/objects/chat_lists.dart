import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat lists
@immutable
final class ChatLists extends TdObject {
  ChatLists({required this.chatLists});

  /// [chatLists] List of chat lists
  final List<ChatList> chatLists;

  static const String constructor = 'chatLists';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_lists': chatLists.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatLists? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLists(
      chatLists: List<ChatList>.from(
        tdListFromJson(json['chat_lists'])
            .map((item) => ChatList.fromJson(tdMapFromJson(item)))
            .whereType<ChatList>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
