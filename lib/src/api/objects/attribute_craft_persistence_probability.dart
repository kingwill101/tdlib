import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes chance of the crafted gift to have the backdrop or symbol of one
/// of the original gifts
@immutable
final class AttributeCraftPersistenceProbability extends TdObject {
  AttributeCraftPersistenceProbability({
    required this.persistenceChancePerMille,
  });

  /// [persistenceChancePerMille] The 4 numbers that describe probability of the
  /// craft result to have the same attribute as one of the original gifts if 1,
  /// 2, 3, or 4 gifts with the attribute are used in the craft. Each number
  /// represents the number of crafted gifts with the original attribute per
  /// 1000 successful craftings
  final List<int> persistenceChancePerMille;

  static const String constructor = 'attributeCraftPersistenceProbability';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'persistence_chance_per_mille': persistenceChancePerMille
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  static AttributeCraftPersistenceProbability? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AttributeCraftPersistenceProbability(
      persistenceChancePerMille: List<int>.from(
        tdListFromJson(
          json['persistence_chance_per_mille'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
