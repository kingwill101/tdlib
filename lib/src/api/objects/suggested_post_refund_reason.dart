import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes reason for refund of the payment for a suggested post
@immutable
sealed class SuggestedPostRefundReason extends TdObject {
  const SuggestedPostRefundReason();

  static const String constructor = 'suggestedPostRefundReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SuggestedPostRefundReasonPaymentRefunded]
  /// [SuggestedPostRefundReasonPostDeleted]
  static SuggestedPostRefundReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostRefundReasonPaymentRefunded.constructor:
        return SuggestedPostRefundReasonPaymentRefunded.fromJson(json);

      case SuggestedPostRefundReasonPostDeleted.constructor:
        return SuggestedPostRefundReasonPostDeleted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The post was refunded, because the payment for the post was refunded
@immutable
final class SuggestedPostRefundReasonPaymentRefunded
    extends SuggestedPostRefundReason {
  const SuggestedPostRefundReasonPaymentRefunded();

  static const String constructor = 'suggestedPostRefundReasonPaymentRefunded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedPostRefundReasonPaymentRefunded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostRefundReasonPaymentRefunded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The post was refunded, because it was deleted by channel administrators in
/// less than getOption("suggested_post_lifetime_min") seconds
@immutable
final class SuggestedPostRefundReasonPostDeleted
    extends SuggestedPostRefundReason {
  const SuggestedPostRefundReasonPostDeleted();

  static const String constructor = 'suggestedPostRefundReasonPostDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedPostRefundReasonPostDeleted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostRefundReasonPostDeleted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
