import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains identifier of a sent guest message
@immutable
final class InlineMessageId extends TdObject {
  InlineMessageId({required this.id});

  /// [id] Unique identifier for the message
  final String id;

  static const String constructor = 'inlineMessageId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    '@type': constructor,
  };

  static InlineMessageId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineMessageId(id: (json['id'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
