import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message viewers
@immutable
final class MessageViewers extends TdObject {
  MessageViewers({required this.viewers});

  /// [viewers] List of message viewers
  final List<MessageViewer> viewers;

  static const String constructor = 'messageViewers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'viewers': viewers.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessageViewers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageViewers(
      viewers: List<MessageViewer>.from(
        tdListFromJson(json['viewers'])
            .map((item) => MessageViewer.fromJson(tdMapFromJson(item)))
            .whereType<MessageViewer>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
