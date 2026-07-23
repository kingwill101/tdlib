import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a round of an auction
@immutable
final class AuctionRound extends TdObject {
  AuctionRound({
    required this.number,
    required this.duration,
    required this.extendTime,
    required this.topWinnerCount,
  });

  /// [number] 1-based number of the round
  final int number;

  /// [duration] Duration of the round, in seconds
  final int duration;

  /// [extendTime] The number of seconds for which the round will be extended if
  /// there are changes in the top winners
  final int extendTime;

  /// [topWinnerCount] The number of top winners who trigger round extension if
  /// changed
  final int topWinnerCount;

  static const String constructor = 'auctionRound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'number': number,
    'duration': duration,
    'extend_time': extendTime,
    'top_winner_count': topWinnerCount,
    '@type': constructor,
  };

  static AuctionRound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionRound(
      number: (json['number'] as int?) ?? 0,
      duration: (json['duration'] as int?) ?? 0,
      extendTime: (json['extend_time'] as int?) ?? 0,
      topWinnerCount: (json['top_winner_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
