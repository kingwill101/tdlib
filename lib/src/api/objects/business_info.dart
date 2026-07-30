import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Business account
@immutable
final class BusinessInfo extends TdObject {
  BusinessInfo({
    this.location,
    this.openingHours,
    this.localOpeningHours,
    required this.nextOpenIn,
    required this.nextCloseIn,
    this.greetingMessageSettings,
    this.awayMessageSettings,
    this.startPage,
  });

  /// [location] Location of the business; may be null if none
  final BusinessLocation? location;

  /// [openingHours] Opening hours of the business; may be null if none. The
  /// hours are guaranteed to be valid and have already been split by week days
  final BusinessOpeningHours? openingHours;

  /// [localOpeningHours] Opening hours of the business in the local time; may
  /// be null if none. The hours are guaranteed to be valid and have already
  /// been split by week days. Local time zone identifier will be empty. An
  /// updateUserFullInfo update is not triggered when value of this field
  /// changes
  final BusinessOpeningHours? localOpeningHours;

  /// [nextOpenIn] Time left before the business will open the next time, in
  /// seconds; 0 if unknown. An updateUserFullInfo update is not triggered when
  /// value of this field changes
  final int nextOpenIn;

  /// [nextCloseIn] Time left before the business will close the next time, in
  /// seconds; 0 if unknown. An updateUserFullInfo update is not triggered when
  /// value of this field changes
  final int nextCloseIn;

  /// [greetingMessageSettings] The greeting message; may be null if none or the
  /// Business account is not of the current user
  final BusinessGreetingMessageSettings? greetingMessageSettings;

  /// [awayMessageSettings] The away message; may be null if none or the
  /// Business account is not of the current user
  final BusinessAwayMessageSettings? awayMessageSettings;

  /// [startPage] Information about start page of the account; may be null if
  /// none
  final BusinessStartPage? startPage;

  static const String constructor = 'businessInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'opening_hours': openingHours?.toJson(),
    'local_opening_hours': localOpeningHours?.toJson(),
    'next_open_in': nextOpenIn,
    'next_close_in': nextCloseIn,
    'greeting_message_settings': greetingMessageSettings?.toJson(),
    'away_message_settings': awayMessageSettings?.toJson(),
    'start_page': startPage?.toJson(),
    '@type': constructor,
  };

  static BusinessInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessInfo(
      location: BusinessLocation.fromJson(tdMapFromJson(json['location'])),
      openingHours: BusinessOpeningHours.fromJson(
        tdMapFromJson(json['opening_hours']),
      ),
      localOpeningHours: BusinessOpeningHours.fromJson(
        tdMapFromJson(json['local_opening_hours']),
      ),
      nextOpenIn: (json['next_open_in'] as int?) ?? 0,
      nextCloseIn: (json['next_close_in'] as int?) ?? 0,
      greetingMessageSettings: BusinessGreetingMessageSettings.fromJson(
        tdMapFromJson(json['greeting_message_settings']),
      ),
      awayMessageSettings: BusinessAwayMessageSettings.fromJson(
        tdMapFromJson(json['away_message_settings']),
      ),
      startPage: BusinessStartPage.fromJson(tdMapFromJson(json['start_page'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
