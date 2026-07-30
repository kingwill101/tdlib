import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a chat folder by its identifier
/// Returns [ChatFolder]
@immutable
final class GetChatFolder extends TdFunction {
  GetChatFolder({required this.chatFolderId});

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_folder_id': chatFolderId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
