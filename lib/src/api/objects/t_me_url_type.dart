import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of URL linking to an internal Telegram entity
@immutable
sealed class TMeUrlType extends TdObject {
  const TMeUrlType();

  static const String constructor = 'tMeUrlType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TMeUrlTypeChatInvite]
  /// [TMeUrlTypeStickerSet]
  /// [TMeUrlTypeSupergroup]
  /// [TMeUrlTypeUser]
  static TMeUrlType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TMeUrlTypeChatInvite.constructor:
        return TMeUrlTypeChatInvite.fromJson(json);

      case TMeUrlTypeStickerSet.constructor:
        return TMeUrlTypeStickerSet.fromJson(json);

      case TMeUrlTypeSupergroup.constructor:
        return TMeUrlTypeSupergroup.fromJson(json);

      case TMeUrlTypeUser.constructor:
        return TMeUrlTypeUser.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat invite link
@immutable
final class TMeUrlTypeChatInvite extends TMeUrlType {
  TMeUrlTypeChatInvite({this.info});

  /// [info] Information about the chat invite link
  final ChatInviteLinkInfo? info;

  static const String constructor = 'tMeUrlTypeChatInvite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'info': info?.toJson(),
    '@type': constructor,
  };

  static TMeUrlTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeChatInvite(
      info: ChatInviteLinkInfo.fromJson(tdMapFromJson(json['info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A URL linking to a sticker set
@immutable
final class TMeUrlTypeStickerSet extends TMeUrlType {
  TMeUrlTypeStickerSet({required this.stickerSetId});

  /// [stickerSetId] Identifier of the sticker set
  final int stickerSetId;

  static const String constructor = 'tMeUrlTypeStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_set_id': stickerSetId.toString(),
    '@type': constructor,
  };

  static TMeUrlTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeStickerSet(
      stickerSetId:
          int.tryParse((json['sticker_set_id'] as dynamic)?.toString() ?? '') ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A URL linking to a public supergroup or channel
@immutable
final class TMeUrlTypeSupergroup extends TMeUrlType {
  TMeUrlTypeSupergroup({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  static const String constructor = 'tMeUrlTypeSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    '@type': constructor,
  };

  static TMeUrlTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeSupergroup(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A URL linking to a user
@immutable
final class TMeUrlTypeUser extends TMeUrlType {
  TMeUrlTypeUser({required this.userId});

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'tMeUrlTypeUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static TMeUrlTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeUser(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
