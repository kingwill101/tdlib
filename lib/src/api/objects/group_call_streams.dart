import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of group call streams
@immutable
final class GroupCallStreams extends TdObject {
  GroupCallStreams({required this.streams});

  /// [streams] A list of group call streams
  final List<GroupCallStream> streams;

  static const String constructor = 'groupCallStreams';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'streams': streams.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static GroupCallStreams? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallStreams(
      streams: List<GroupCallStream>.from(
        tdListFromJson(json['streams'])
            .map((item) => GroupCallStream.fromJson(tdMapFromJson(item)))
            .whereType<GroupCallStream>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
