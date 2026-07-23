import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of bot commands
@immutable
final class BotCommands extends TdObject {
  BotCommands({required this.botUserId, required this.commands});

  /// [botUserId] Bot's user identifier
  final int botUserId;

  /// [commands] List of bot commands
  final List<BotCommand> commands;

  static const String constructor = 'botCommands';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'commands': commands.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BotCommands? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommands(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      commands: List<BotCommand>.from(
        tdListFromJson(json['commands'])
            .map((item) => BotCommand.fromJson(tdMapFromJson(item)))
            .whereType<BotCommand>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
