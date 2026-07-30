import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a Vertical alignment of a table cell content
@immutable
sealed class PageBlockVerticalAlignment extends TdObject {
  const PageBlockVerticalAlignment();

  static const String constructor = 'pageBlockVerticalAlignment';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PageBlockVerticalAlignmentBottom]
  /// [PageBlockVerticalAlignmentMiddle]
  /// [PageBlockVerticalAlignmentTop]
  static PageBlockVerticalAlignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PageBlockVerticalAlignmentBottom.constructor:
        return PageBlockVerticalAlignmentBottom.fromJson(json);

      case PageBlockVerticalAlignmentMiddle.constructor:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);

      case PageBlockVerticalAlignmentTop.constructor:
        return PageBlockVerticalAlignmentTop.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be bottom-aligned
@immutable
final class PageBlockVerticalAlignmentBottom
    extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentBottom();

  static const String constructor = 'pageBlockVerticalAlignmentBottom';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockVerticalAlignmentBottom? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentBottom();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be middle-aligned
@immutable
final class PageBlockVerticalAlignmentMiddle
    extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentMiddle();

  static const String constructor = 'pageBlockVerticalAlignmentMiddle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockVerticalAlignmentMiddle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentMiddle();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The content must be top-aligned
@immutable
final class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentTop();

  static const String constructor = 'pageBlockVerticalAlignmentTop';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockVerticalAlignmentTop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentTop();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
