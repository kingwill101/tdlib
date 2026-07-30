import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes data channel for a group call
@immutable
sealed class GroupCallDataChannel extends TdObject {
  const GroupCallDataChannel();

  static const String constructor = 'groupCallDataChannel';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GroupCallDataChannelMain]
  /// [GroupCallDataChannelScreenSharing]
  static GroupCallDataChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GroupCallDataChannelMain.constructor:
        return GroupCallDataChannelMain.fromJson(json);

      case GroupCallDataChannelScreenSharing.constructor:
        return GroupCallDataChannelScreenSharing.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The main data channel for audio and video data
@immutable
final class GroupCallDataChannelMain extends GroupCallDataChannel {
  const GroupCallDataChannelMain();

  static const String constructor = 'groupCallDataChannelMain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GroupCallDataChannelMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallDataChannelMain();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The data channel for screen sharing
@immutable
final class GroupCallDataChannelScreenSharing extends GroupCallDataChannel {
  const GroupCallDataChannelScreenSharing();

  static const String constructor = 'groupCallDataChannelScreenSharing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GroupCallDataChannelScreenSharing? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GroupCallDataChannelScreenSharing();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
