import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of chat administrators
@immutable
final class ChatAdministrators extends TdObject {
  ChatAdministrators({required this.administrators});

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  static const String constructor = 'chatAdministrators';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'administrators': administrators.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
      administrators: List<ChatAdministrator>.from(
        tdListFromJson(json['administrators'])
            .map((item) => ChatAdministrator.fromJson(tdMapFromJson(item)))
            .whereType<ChatAdministrator>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
