import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction for revenue earned from sponsored messages
/// in a chat
@immutable
sealed class ChatRevenueTransactionType extends TdObject {
  const ChatRevenueTransactionType();

  static const String constructor = 'chatRevenueTransactionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatRevenueTransactionTypeFragmentRefund]
  /// [ChatRevenueTransactionTypeFragmentWithdrawal]
  /// [ChatRevenueTransactionTypeSponsoredMessageEarnings]
  /// [ChatRevenueTransactionTypeSuggestedPostEarnings]
  /// [ChatRevenueTransactionTypeUnsupported]
  static ChatRevenueTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatRevenueTransactionTypeFragmentRefund.constructor:
        return ChatRevenueTransactionTypeFragmentRefund.fromJson(json);

      case ChatRevenueTransactionTypeFragmentWithdrawal.constructor:
        return ChatRevenueTransactionTypeFragmentWithdrawal.fromJson(json);

      case ChatRevenueTransactionTypeSponsoredMessageEarnings.constructor:
        return ChatRevenueTransactionTypeSponsoredMessageEarnings.fromJson(
          json,
        );

      case ChatRevenueTransactionTypeSuggestedPostEarnings.constructor:
        return ChatRevenueTransactionTypeSuggestedPostEarnings.fromJson(json);

      case ChatRevenueTransactionTypeUnsupported.constructor:
        return ChatRevenueTransactionTypeUnsupported.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a refund for failed withdrawal of earnings through Fragment
@immutable
final class ChatRevenueTransactionTypeFragmentRefund
    extends ChatRevenueTransactionType {
  ChatRevenueTransactionTypeFragmentRefund({required this.refundDate});

  /// [refundDate] Point in time (Unix timestamp) when the transaction was
  /// refunded
  final int refundDate;

  static const String constructor = 'chatRevenueTransactionTypeFragmentRefund';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'refund_date': refundDate,
    '@type': constructor,
  };

  static ChatRevenueTransactionTypeFragmentRefund? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeFragmentRefund(
      refundDate: (json['refund_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a withdrawal of earnings through Fragment
@immutable
final class ChatRevenueTransactionTypeFragmentWithdrawal
    extends ChatRevenueTransactionType {
  ChatRevenueTransactionTypeFragmentWithdrawal({
    required this.withdrawalDate,
    this.state,
  });

  /// [withdrawalDate] Point in time (Unix timestamp) when the earnings
  /// withdrawal started
  final int withdrawalDate;

  /// [state] State of the withdrawal
  final RevenueWithdrawalState? state;

  static const String constructor =
      'chatRevenueTransactionTypeFragmentWithdrawal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'withdrawal_date': withdrawalDate,
    'state': state?.toJson(),
    '@type': constructor,
  };

  static ChatRevenueTransactionTypeFragmentWithdrawal? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeFragmentWithdrawal(
      withdrawalDate: (json['withdrawal_date'] as int?) ?? 0,
      state: RevenueWithdrawalState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes earnings from sponsored messages in a chat in some time frame
@immutable
final class ChatRevenueTransactionTypeSponsoredMessageEarnings
    extends ChatRevenueTransactionType {
  ChatRevenueTransactionTypeSponsoredMessageEarnings({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) when the earnings started
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the earnings ended
  final int endDate;

  static const String constructor =
      'chatRevenueTransactionTypeSponsoredMessageEarnings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_date': startDate,
    'end_date': endDate,
    '@type': constructor,
  };

  static ChatRevenueTransactionTypeSponsoredMessageEarnings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeSponsoredMessageEarnings(
      startDate: (json['start_date'] as int?) ?? 0,
      endDate: (json['end_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes earnings from a published suggested post
@immutable
final class ChatRevenueTransactionTypeSuggestedPostEarnings
    extends ChatRevenueTransactionType {
  ChatRevenueTransactionTypeSuggestedPostEarnings({required this.userId});

  /// [userId] Identifier of the user who paid for the suggested post
  final int userId;

  static const String constructor =
      'chatRevenueTransactionTypeSuggestedPostEarnings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static ChatRevenueTransactionTypeSuggestedPostEarnings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactionTypeSuggestedPostEarnings(
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes an unsupported transaction
@immutable
final class ChatRevenueTransactionTypeUnsupported
    extends ChatRevenueTransactionType {
  const ChatRevenueTransactionTypeUnsupported();

  static const String constructor = 'chatRevenueTransactionTypeUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatRevenueTransactionTypeUnsupported? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ChatRevenueTransactionTypeUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
