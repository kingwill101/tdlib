import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains one row of the game high score table
@immutable
final class GameHighScore extends TdObject {
  GameHighScore({
    required this.position,
    required this.userId,
    required this.score,
  });

  /// [position] Position in the high score table
  final int position;

  /// [userId] User identifier
  final int userId;

  /// [score] User score
  final int score;

  static const String constructor = 'gameHighScore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'position': position,
    'user_id': userId,
    'score': score,
    '@type': constructor,
  };

  static GameHighScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScore(
      position: (json['position'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      score: (json['score'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
