import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of message positions
@immutable
final class MessagePositions extends TdObject {
  MessagePositions({required this.totalCount, required this.positions});

  /// [totalCount] Total number of messages found
  final int totalCount;

  /// [positions] List of message positions
  final List<MessagePosition> positions;

  static const String constructor = 'messagePositions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'positions': positions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessagePositions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePositions(
      totalCount: (json['total_count'] as int?) ?? 0,
      positions: List<MessagePosition>.from(
        tdListFromJson(json['positions'])
            .map((item) => MessagePosition.fromJson(tdMapFromJson(item)))
            .whereType<MessagePosition>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
