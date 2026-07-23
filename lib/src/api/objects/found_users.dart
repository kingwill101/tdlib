import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of found users
@immutable
final class FoundUsers extends TdObject {
  FoundUsers({required this.userIds, required this.nextOffset});

  /// [userIds] Identifiers of the found users
  final List<int> userIds;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_ids': userIds.map((item) => item).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static FoundUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundUsers(
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
