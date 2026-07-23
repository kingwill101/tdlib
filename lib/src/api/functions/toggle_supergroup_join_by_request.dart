import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether all users directly joining the supergroup need to be
/// approved by supergroup administrators; requires can_restrict_members
/// administrator right
/// Returns [Ok]
@immutable
final class ToggleSupergroupJoinByRequest extends TdFunction {
  ToggleSupergroupJoinByRequest({
    required this.supergroupId,
    required this.joinByRequest,
  });

  /// [supergroupId] Identifier of the supergroup that isn't a broadcast group
  /// and isn't a channel direct message group
  final int supergroupId;

  /// [joinByRequest] New value of join_by_request
  final bool joinByRequest;

  static const String constructor = 'toggleSupergroupJoinByRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    'join_by_request': joinByRequest,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
