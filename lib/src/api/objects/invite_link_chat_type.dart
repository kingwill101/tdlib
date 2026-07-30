import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of chat to which points an invite link
@immutable
sealed class InviteLinkChatType extends TdObject {
  const InviteLinkChatType();

  static const String constructor = 'inviteLinkChatType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InviteLinkChatTypeBasicGroup]
  /// [InviteLinkChatTypeChannel]
  /// [InviteLinkChatTypeSupergroup]
  static InviteLinkChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InviteLinkChatTypeBasicGroup.constructor:
        return InviteLinkChatTypeBasicGroup.fromJson(json);

      case InviteLinkChatTypeChannel.constructor:
        return InviteLinkChatTypeChannel.fromJson(json);

      case InviteLinkChatTypeSupergroup.constructor:
        return InviteLinkChatTypeSupergroup.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an invite link for a basic group
@immutable
final class InviteLinkChatTypeBasicGroup extends InviteLinkChatType {
  const InviteLinkChatTypeBasicGroup();

  static const String constructor = 'inviteLinkChatTypeBasicGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteLinkChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeBasicGroup();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an invite link for a channel
@immutable
final class InviteLinkChatTypeChannel extends InviteLinkChatType {
  const InviteLinkChatTypeChannel();

  static const String constructor = 'inviteLinkChatTypeChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteLinkChatTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeChannel();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an invite link for a supergroup
@immutable
final class InviteLinkChatTypeSupergroup extends InviteLinkChatType {
  const InviteLinkChatTypeSupergroup();

  static const String constructor = 'inviteLinkChatTypeSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteLinkChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InviteLinkChatTypeSupergroup();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
