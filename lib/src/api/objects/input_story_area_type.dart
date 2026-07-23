import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of clickable area on a story media to be added
@immutable
sealed class InputStoryAreaType extends TdObject {
  const InputStoryAreaType();

  static const String constructor = 'inputStoryAreaType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputStoryAreaTypeFoundVenue]
  /// [InputStoryAreaTypeLink]
  /// [InputStoryAreaTypeLocation]
  /// [InputStoryAreaTypeMessage]
  /// [InputStoryAreaTypePreviousVenue]
  /// [InputStoryAreaTypeSuggestedReaction]
  /// [InputStoryAreaTypeUpgradedGift]
  /// [InputStoryAreaTypeWeather]
  static InputStoryAreaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryAreaTypeFoundVenue.constructor:
        return InputStoryAreaTypeFoundVenue.fromJson(json);

      case InputStoryAreaTypeLink.constructor:
        return InputStoryAreaTypeLink.fromJson(json);

      case InputStoryAreaTypeLocation.constructor:
        return InputStoryAreaTypeLocation.fromJson(json);

      case InputStoryAreaTypeMessage.constructor:
        return InputStoryAreaTypeMessage.fromJson(json);

      case InputStoryAreaTypePreviousVenue.constructor:
        return InputStoryAreaTypePreviousVenue.fromJson(json);

      case InputStoryAreaTypeSuggestedReaction.constructor:
        return InputStoryAreaTypeSuggestedReaction.fromJson(json);

      case InputStoryAreaTypeUpgradedGift.constructor:
        return InputStoryAreaTypeUpgradedGift.fromJson(json);

      case InputStoryAreaTypeWeather.constructor:
        return InputStoryAreaTypeWeather.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a venue found by the bot
/// getOption("venue_search_bot_username")
@immutable
final class InputStoryAreaTypeFoundVenue extends InputStoryAreaType {
  InputStoryAreaTypeFoundVenue({required this.queryId, required this.resultId});

  /// [queryId] Identifier of the inline query, used to found the venue
  final int queryId;

  /// [resultId] Identifier of the inline query result
  final String resultId;

  static const String constructor = 'inputStoryAreaTypeFoundVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query_id': queryId.toString(),
    'result_id': resultId,
    '@type': constructor,
  };

  static InputStoryAreaTypeFoundVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeFoundVenue(
      queryId:
          int.tryParse((json['query_id'] as dynamic)?.toString() ?? '') ?? 0,
      resultId: (json['result_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a HTTP or tg:// link
@immutable
final class InputStoryAreaTypeLink extends InputStoryAreaType {
  InputStoryAreaTypeLink({required this.url});

  /// [url] HTTP or tg:// URL to be opened when the area is clicked
  final String url;

  static const String constructor = 'inputStoryAreaTypeLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InputStoryAreaTypeLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeLink(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a location
@immutable
final class InputStoryAreaTypeLocation extends InputStoryAreaType {
  InputStoryAreaTypeLocation({this.location, this.address});

  /// [location] The location
  final Location? location;

  /// [address] Address of the location; pass null if unknown
  final LocationAddress? address;

  static const String constructor = 'inputStoryAreaTypeLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'address': address?.toJson(),
    '@type': constructor,
  };

  static InputStoryAreaTypeLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeLocation(
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
final class InputStoryAreaTypeMessage extends InputStoryAreaType {
  InputStoryAreaTypeMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message. Currently, the chat must
  /// be a supergroup or a channel chat
  final int chatId;

  /// [messageId] Identifier of the message. Use
  /// messageProperties.can_be_shared_in_story to check whether the message is
  /// suitable
  final int messageId;

  static const String constructor = 'inputStoryAreaTypeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static InputStoryAreaTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a venue already added to the story
@immutable
final class InputStoryAreaTypePreviousVenue extends InputStoryAreaType {
  InputStoryAreaTypePreviousVenue({
    required this.venueProvider,
    required this.venueId,
  });

  /// [venueProvider] Provider of the venue
  final String venueProvider;

  /// [venueId] Identifier of the venue in the provider database
  final String venueId;

  static const String constructor = 'inputStoryAreaTypePreviousVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue_provider': venueProvider,
    'venue_id': venueId,
    '@type': constructor,
  };

  static InputStoryAreaTypePreviousVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypePreviousVenue(
      venueProvider: (json['venue_provider'] as String?) ?? '',
      venueId: (json['venue_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area pointing to a suggested reaction
@immutable
final class InputStoryAreaTypeSuggestedReaction extends InputStoryAreaType {
  InputStoryAreaTypeSuggestedReaction({
    this.reactionType,
    required this.isDark,
    required this.isFlipped,
  });

  /// [reactionType] Type of the reaction
  final ReactionType? reactionType;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;

  static const String constructor = 'inputStoryAreaTypeSuggestedReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reaction_type': reactionType?.toJson(),
    'is_dark': isDark,
    'is_flipped': isFlipped,
    '@type': constructor,
  };

  static InputStoryAreaTypeSuggestedReaction? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeSuggestedReaction(
      reactionType: ReactionType.fromJson(tdMapFromJson(json['reaction_type'])),
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
final class InputStoryAreaTypeUpgradedGift extends InputStoryAreaType {
  InputStoryAreaTypeUpgradedGift({required this.giftName});

  /// [giftName] Unique name of the upgraded gift
  final String giftName;

  static const String constructor = 'inputStoryAreaTypeUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_name': giftName,
    '@type': constructor,
  };

  static InputStoryAreaTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeUpgradedGift(
      giftName: (json['gift_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An area with information about weather
@immutable
final class InputStoryAreaTypeWeather extends InputStoryAreaType {
  InputStoryAreaTypeWeather({
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

  static const String constructor = 'inputStoryAreaTypeWeather';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'temperature': temperature,
    'emoji': emoji,
    'background_color': backgroundColor,
    '@type': constructor,
  };

  static InputStoryAreaTypeWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeWeather(
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
