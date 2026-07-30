import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of sponsored chats
@immutable
final class SponsoredChats extends TdObject {
  SponsoredChats({required this.chats});

  /// [chats] List of sponsored chats
  final List<SponsoredChat> chats;

  static const String constructor = 'sponsoredChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chats': chats.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static SponsoredChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredChats(
      chats: List<SponsoredChat>.from(
        tdListFromJson(json['chats'])
            .map((item) => SponsoredChat.fromJson(tdMapFromJson(item)))
            .whereType<SponsoredChat>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
