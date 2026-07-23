import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a tab shown in a user or a chat profile
@immutable
sealed class ProfileTab extends TdObject {
  const ProfileTab();

  static const String constructor = 'profileTab';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ProfileTabFiles]
  /// [ProfileTabGifs]
  /// [ProfileTabGifts]
  /// [ProfileTabLinks]
  /// [ProfileTabMedia]
  /// [ProfileTabMusic]
  /// [ProfileTabPosts]
  /// [ProfileTabVoice]
  static ProfileTab? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ProfileTabFiles.constructor:
        return ProfileTabFiles.fromJson(json);

      case ProfileTabGifs.constructor:
        return ProfileTabGifs.fromJson(json);

      case ProfileTabGifts.constructor:
        return ProfileTabGifts.fromJson(json);

      case ProfileTabLinks.constructor:
        return ProfileTabLinks.fromJson(json);

      case ProfileTabMedia.constructor:
        return ProfileTabMedia.fromJson(json);

      case ProfileTabMusic.constructor:
        return ProfileTabMusic.fromJson(json);

      case ProfileTabPosts.constructor:
        return ProfileTabPosts.fromJson(json);

      case ProfileTabVoice.constructor:
        return ProfileTabVoice.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with documents posted by the channel
@immutable
final class ProfileTabFiles extends ProfileTab {
  const ProfileTabFiles();

  static const String constructor = 'profileTabFiles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabFiles();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with animations posted by the channel
@immutable
final class ProfileTabGifs extends ProfileTab {
  const ProfileTabGifs();

  static const String constructor = 'profileTabGifs';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabGifs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabGifs();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with gifts received by the user or the channel chat
@immutable
final class ProfileTabGifts extends ProfileTab {
  const ProfileTabGifts();

  static const String constructor = 'profileTabGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabGifts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with messages posted by the channel and containing links
@immutable
final class ProfileTabLinks extends ProfileTab {
  const ProfileTabLinks();

  static const String constructor = 'profileTabLinks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabLinks();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with photos and videos posted by the channel
@immutable
final class ProfileTabMedia extends ProfileTab {
  const ProfileTabMedia();

  static const String constructor = 'profileTabMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabMedia();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with audio messages posted by the channel
@immutable
final class ProfileTabMusic extends ProfileTab {
  const ProfileTabMusic();

  static const String constructor = 'profileTabMusic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabMusic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabMusic();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with stories posted by the user or the channel chat and saved to
/// profile
@immutable
final class ProfileTabPosts extends ProfileTab {
  const ProfileTabPosts();

  static const String constructor = 'profileTabPosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabPosts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabPosts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A tab with voice notes posted by the channel
@immutable
final class ProfileTabVoice extends ProfileTab {
  const ProfileTabVoice();

  static const String constructor = 'profileTabVoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ProfileTabVoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ProfileTabVoice();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
