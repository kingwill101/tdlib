import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a found affiliate program
@immutable
final class FoundAffiliateProgram extends TdObject {
  FoundAffiliateProgram({required this.botUserId, this.info});

  /// [botUserId] User identifier of the bot created the program
  final int botUserId;

  /// [info] Information about the affiliate program
  final AffiliateProgramInfo? info;

  static const String constructor = 'foundAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'info': info?.toJson(),
    '@type': constructor,
  };

  static FoundAffiliateProgram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundAffiliateProgram(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      info: AffiliateProgramInfo.fromJson(tdMapFromJson(json['info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
