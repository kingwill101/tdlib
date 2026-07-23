import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of clickable area on a story media
@immutable
sealed class StoryAreaType extends TdObject {
  const StoryAreaType();

  static const String constructor = 'storyAreaType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryAreaTypeLink]
  /// [StoryAreaTypeLocation]
  /// [StoryAreaTypeMessage]
  /// [StoryAreaTypeSuggestedReaction]
  /// [StoryAreaTypeUpgradedGift]
  /// [StoryAreaTypeVenue]
  /// [StoryAreaTypeWeather]
  static StoryAreaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryAreaTypeLink.constructor:
        return StoryAreaTypeLink.fromJson(json);

      case StoryAreaTypeLocation.constructor:
        return StoryAreaTypeLocation.fromJson(json);

      case StoryAreaTypeMessage.constructor:
        return StoryAreaTypeMessage.fromJson(json);

      case StoryAreaTypeSuggestedReaction.constructor:
        return StoryAreaTypeSuggestedReaction.fromJson(json);

      case StoryAreaTypeUpgradedGift.constructor:
        return StoryAreaTypeUpgradedGift.fromJson(json);

      case StoryAreaTypeVenue.constructor:
        return StoryAreaTypeVenue.fromJson(json);

      case StoryAreaTypeWeather.constructor:
        return StoryAreaTypeWeather.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a HTTP or tg:// link
@immutable
final class StoryAreaTypeLink extends StoryAreaType {
  StoryAreaTypeLink({required this.url});

  /// [url] HTTP or tg:// URL to be opened when the area is clicked
  final String url;

  static const String constructor = 'storyAreaTypeLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static StoryAreaTypeLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeLink(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a location
@immutable
final class StoryAreaTypeLocation extends StoryAreaType {
  StoryAreaTypeLocation({this.location, this.address});

  /// [location] The location
  final Location? location;

  /// [address] Address of the location; may be null if unknown
  final LocationAddress? address;

  static const String constructor = 'storyAreaTypeLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'address': address?.toJson(),
    '@type': constructor,
  };

  static StoryAreaTypeLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
      address: LocationAddress.fromJson(tdMapFromJson(json['address'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a message
@immutable
final class StoryAreaTypeMessage extends StoryAreaType {
  StoryAreaTypeMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'storyAreaTypeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static StoryAreaTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a suggested reaction. App needs to show a clickable
/// reaction on the area and call setStoryReaction when the are is clicked
@immutable
final class StoryAreaTypeSuggestedReaction extends StoryAreaType {
  StoryAreaTypeSuggestedReaction({
    this.reactionType,
    required this.totalCount,
    required this.isDark,
    required this.isFlipped,
  });

  /// [reactionType] Type of the reaction
  final ReactionType? reactionType;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;

  static const String constructor = 'storyAreaTypeSuggestedReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reaction_type': reactionType?.toJson(),
    'total_count': totalCount,
    'is_dark': isDark,
    'is_flipped': isFlipped,
    '@type': constructor,
  };

  static StoryAreaTypeSuggestedReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeSuggestedReaction(
      reactionType: ReactionType.fromJson(tdMapFromJson(json['reaction_type'])),
      totalCount: (json['total_count'] as int?) ?? 0,
      isDark: (json['is_dark'] as bool?) ?? false,
      isFlipped: (json['is_flipped'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area with an upgraded gift
@immutable
final class StoryAreaTypeUpgradedGift extends StoryAreaType {
  StoryAreaTypeUpgradedGift({required this.giftName});

  /// [giftName] Unique name of the upgraded gift
  final String giftName;

  static const String constructor = 'storyAreaTypeUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_name': giftName,
    '@type': constructor,
  };

  static StoryAreaTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeUpgradedGift(
      giftName: (json['gift_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a venue
@immutable
final class StoryAreaTypeVenue extends StoryAreaType {
  StoryAreaTypeVenue({this.venue});

  /// [venue] Information about the venue
  final Venue? venue;

  static const String constructor = 'storyAreaTypeVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue': venue?.toJson(),
    '@type': constructor,
  };

  static StoryAreaTypeVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeVenue(
      venue: Venue.fromJson(tdMapFromJson(json['venue'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area with information about weather
@immutable
final class StoryAreaTypeWeather extends StoryAreaType {
  StoryAreaTypeWeather({
    required this.temperature,
    required this.emoji,
    required this.backgroundColor,
  });

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  /// [backgroundColor] A color of the area background in the ARGB format
  final int backgroundColor;

  static const String constructor = 'storyAreaTypeWeather';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'temperature': temperature,
    'emoji': emoji,
    'background_color': backgroundColor,
    '@type': constructor,
  };

  static StoryAreaTypeWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeWeather(
      temperature: ((json['temperature'] as num?) ?? 0.0).toDouble(),
      emoji: (json['emoji'] as String?) ?? '',
      backgroundColor: (json['background_color'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
