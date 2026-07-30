import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a chat folder
@immutable
final class ChatFolderInfo extends TdObject {
  ChatFolderInfo({
    required this.id,
    this.name,
    this.icon,
    required this.colorId,
    required this.isShareable,
    required this.hasMyInviteLinks,
  });

  /// [id] Unique chat folder identifier
  final int id;

  /// [name] The name of the folder
  final ChatFolderName? name;

  /// [icon] The chosen or default icon for the chat folder
  final ChatFolderIcon? icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon;
  /// from -1 to 6. If -1, then color is disabled
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [hasMyInviteLinks] True, if the chat folder has invite links created by
  /// the current user
  final bool hasMyInviteLinks;

  static const String constructor = 'chatFolderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name?.toJson(),
    'icon': icon?.toJson(),
    'color_id': colorId,
    'is_shareable': isShareable,
    'has_my_invite_links': hasMyInviteLinks,
    '@type': constructor,
  };

  static ChatFolderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInfo(
      id: (json['id'] as int?) ?? 0,
      name: ChatFolderName.fromJson(tdMapFromJson(json['name'])),
      icon: ChatFolderIcon.fromJson(tdMapFromJson(json['icon'])),
      colorId: (json['color_id'] as int?) ?? 0,
      isShareable: (json['is_shareable'] as bool?) ?? false,
      hasMyInviteLinks: (json['has_my_invite_links'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
