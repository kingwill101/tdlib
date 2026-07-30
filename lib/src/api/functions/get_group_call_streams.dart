import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about available streams in a video chat or a live
/// story
/// Returns [GroupCallStreams]
@immutable
final class GetGroupCallStreams extends TdFunction {
  GetGroupCallStreams({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  static const String constructor = 'getGroupCallStreams';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
