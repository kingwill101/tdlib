import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of updates
@immutable
final class Updates extends TdObject {
  Updates({required this.updates});

  /// [updates] List of updates
  final List<Update> updates;

  static const String constructor = 'updates';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'updates': updates.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Updates? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Updates(
      updates: List<Update>.from(
        tdListFromJson(json['updates'])
            .map((item) => Update.fromJson(tdMapFromJson(item)))
            .whereType<Update>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
