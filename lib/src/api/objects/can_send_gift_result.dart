import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes whether a gift can be sent now by the current user
@immutable
sealed class CanSendGiftResult extends TdObject {
  const CanSendGiftResult();

  static const String constructor = 'canSendGiftResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CanSendGiftResultFail]
  /// [CanSendGiftResultOk]
  static CanSendGiftResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendGiftResultFail.constructor:
        return CanSendGiftResultFail.fromJson(json);

      case CanSendGiftResultOk.constructor:
        return CanSendGiftResultOk.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift can't be sent now by the current user
@immutable
final class CanSendGiftResultFail extends CanSendGiftResult {
  CanSendGiftResultFail({this.reason});

  /// [reason] Reason to be shown to the user
  final FormattedText? reason;

  static const String constructor = 'canSendGiftResultFail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reason': reason?.toJson(),
    '@type': constructor,
  };

  static CanSendGiftResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanSendGiftResultFail(
      reason: FormattedText.fromJson(tdMapFromJson(json['reason'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift can be sent now by the current user
@immutable
final class CanSendGiftResultOk extends CanSendGiftResult {
  const CanSendGiftResultOk();

  static const String constructor = 'canSendGiftResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanSendGiftResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendGiftResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
