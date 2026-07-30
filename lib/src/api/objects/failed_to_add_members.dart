import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of users that has failed to be added to a chat
@immutable
final class FailedToAddMembers extends TdObject {
  FailedToAddMembers({required this.failedToAddMembers});

  /// [failedToAddMembers] Information about users that weren't added to the
  /// chat
  final List<FailedToAddMember> failedToAddMembers;

  static const String constructor = 'failedToAddMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'failed_to_add_members': failedToAddMembers
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static FailedToAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FailedToAddMembers(
      failedToAddMembers: List<FailedToAddMember>.from(
        tdListFromJson(json['failed_to_add_members'])
            .map((item) => FailedToAddMember.fromJson(tdMapFromJson(item)))
            .whereType<FailedToAddMember>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
