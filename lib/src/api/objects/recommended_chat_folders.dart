import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of recommended chat folders
@immutable
final class RecommendedChatFolders extends TdObject {
  RecommendedChatFolders({required this.chatFolders});

  /// [chatFolders] List of recommended chat folders
  final List<RecommendedChatFolder> chatFolders;

  static const String constructor = 'recommendedChatFolders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static RecommendedChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFolders(
      chatFolders: List<RecommendedChatFolder>.from(
        tdListFromJson(json['chat_folders'])
            .map((item) => RecommendedChatFolder.fromJson(tdMapFromJson(item)))
            .whereType<RecommendedChatFolder>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
