import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of hashtags
@immutable
final class Hashtags extends TdObject {
  Hashtags({required this.hashtags});

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  static const String constructor = 'hashtags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'hashtags': hashtags.map((item) => item).toList(),
    '@type': constructor,
  };

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
      hashtags: List<String>.from(
        tdListFromJson(
          json['hashtags'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
