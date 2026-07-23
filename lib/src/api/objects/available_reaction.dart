import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an available reaction
@immutable
final class AvailableReaction extends TdObject {
  AvailableReaction({this.type, required this.needsPremium});

  /// [type] Type of the reaction
  final ReactionType? type;

  /// [needsPremium] True, if Telegram Premium is needed to send the reaction
  final bool needsPremium;

  static const String constructor = 'availableReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'needs_premium': needsPremium,
    '@type': constructor,
  };

  static AvailableReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReaction(
      type: ReactionType.fromJson(tdMapFromJson(json['type'])),
      needsPremium: (json['needs_premium'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
