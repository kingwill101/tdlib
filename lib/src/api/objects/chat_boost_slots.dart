import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat boost slots
@immutable
final class ChatBoostSlots extends TdObject {
  ChatBoostSlots({required this.slots});

  /// [slots] List of boost slots
  final List<ChatBoostSlot> slots;

  static const String constructor = 'chatBoostSlots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'slots': slots.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatBoostSlots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSlots(
      slots: List<ChatBoostSlot>.from(
        tdListFromJson(json['slots'])
            .map((item) => ChatBoostSlot.fromJson(tdMapFromJson(item)))
            .whereType<ChatBoostSlot>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
