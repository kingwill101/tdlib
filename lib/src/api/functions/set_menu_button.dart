import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets menu button for the given user or for all users; for bots only
/// Returns [Ok]
@immutable
final class SetMenuButton extends TdFunction {
  SetMenuButton({required this.userId, this.menuButton});

  /// [userId] Identifier of the user or 0 to set menu button for all users
  final int userId;

  /// [menuButton] New menu button
  final BotMenuButton? menuButton;

  static const String constructor = 'setMenuButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'menu_button': menuButton?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
