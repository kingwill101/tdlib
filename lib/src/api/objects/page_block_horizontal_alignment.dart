import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a horizontal alignment of a table cell content
@immutable
sealed class PageBlockHorizontalAlignment extends TdObject {
  const PageBlockHorizontalAlignment();

  static const String constructor = 'pageBlockHorizontalAlignment';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PageBlockHorizontalAlignmentCenter]
  /// [PageBlockHorizontalAlignmentLeft]
  /// [PageBlockHorizontalAlignmentRight]
  static PageBlockHorizontalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PageBlockHorizontalAlignmentCenter.constructor:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);

      case PageBlockHorizontalAlignmentLeft.constructor:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);

      case PageBlockHorizontalAlignmentRight.constructor:
        return PageBlockHorizontalAlignmentRight.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be center-aligned
@immutable
final class PageBlockHorizontalAlignmentCenter
    extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentCenter();

  static const String constructor = 'pageBlockHorizontalAlignmentCenter';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockHorizontalAlignmentCenter? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentCenter();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be left-aligned
@immutable
final class PageBlockHorizontalAlignmentLeft
    extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentLeft();

  static const String constructor = 'pageBlockHorizontalAlignmentLeft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockHorizontalAlignmentLeft? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentLeft();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be right-aligned
@immutable
final class PageBlockHorizontalAlignmentRight
    extends PageBlockHorizontalAlignment {
  const PageBlockHorizontalAlignmentRight();

  static const String constructor = 'pageBlockHorizontalAlignmentRight';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockHorizontalAlignmentRight? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockHorizontalAlignmentRight();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
