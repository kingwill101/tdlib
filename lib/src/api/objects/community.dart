import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a community consisting of supergroup chats, channel chats and
/// chats with bots
@immutable
final class Community extends TdObject {
  Community({
    required this.id,
    required this.haveAccess,
    required this.name,
    this.photo,
    required this.date,
    this.status,
    this.permissions,
  });

  /// [id] Community identifier
  final int id;

  /// [haveAccess] If false, the community is inaccessible, and the only
  /// information known about the community is inside this class. Identifier of
  /// the community can't be passed to any method
  final bool haveAccess;

  /// [name] Community name
  final String name;

  /// [photo] Community photo; may be null
  final ChatPhotoInfo? photo;

  /// [date] Point in time (Unix timestamp) when the community was joined, or
  /// the point in time when the community was created, in case the user is not
  /// a member of any chat in the community
  final int date;

  /// [status] Status of the current user in the community
  final CommunityMemberStatus? status;

  /// [permissions] Actions that non-administrator community members are allowed
  /// to take in the community
  final CommunityPermissions? permissions;

  static const String constructor = 'community';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'have_access': haveAccess,
    'name': name,
    'photo': photo?.toJson(),
    'date': date,
    'status': status?.toJson(),
    'permissions': permissions?.toJson(),
    '@type': constructor,
  };

  static Community? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Community(
      id: (json['id'] as int?) ?? 0,
      haveAccess: (json['have_access'] as bool?) ?? false,
      name: (json['name'] as String?) ?? '',
      photo: ChatPhotoInfo.fromJson(tdMapFromJson(json['photo'])),
      date: (json['date'] as int?) ?? 0,
      status: CommunityMemberStatus.fromJson(tdMapFromJson(json['status'])),
      permissions: CommunityPermissions.fromJson(
        tdMapFromJson(json['permissions']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
