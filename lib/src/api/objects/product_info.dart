import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a product that can be paid with invoice
@immutable
final class ProductInfo extends TdObject {
  ProductInfo({required this.title, this.description, this.photo});

  /// [title] Product title
  final String title;

  /// param_[description] Product description
  final FormattedText? description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  static const String constructor = 'productInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'description': description?.toJson(),
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static ProductInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProductInfo(
      title: (json['title'] as String?) ?? '',
      description: FormattedText.fromJson(tdMapFromJson(json['description'])),
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
