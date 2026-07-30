import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a recommended chat folder
@immutable
final class RecommendedChatFolder extends TdObject {
  RecommendedChatFolder({this.folder, required this.description});

  /// [folder] The chat folder
  final ChatFolder? folder;

  /// param_[description] Chat folder description
  final String description;

  static const String constructor = 'recommendedChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'folder': folder?.toJson(),
    'description': description,
    '@type': constructor,
  };

  static RecommendedChatFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFolder(
      folder: ChatFolder.fromJson(tdMapFromJson(json['folder'])),
      description: (json['description'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
