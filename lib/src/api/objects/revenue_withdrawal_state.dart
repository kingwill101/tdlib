import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a revenue withdrawal
@immutable
sealed class RevenueWithdrawalState extends TdObject {
  const RevenueWithdrawalState();

  static const String constructor = 'revenueWithdrawalState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [RevenueWithdrawalStateFailed]
  /// [RevenueWithdrawalStatePending]
  /// [RevenueWithdrawalStateSucceeded]
  static RevenueWithdrawalState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RevenueWithdrawalStateFailed.constructor:
        return RevenueWithdrawalStateFailed.fromJson(json);

      case RevenueWithdrawalStatePending.constructor:
        return RevenueWithdrawalStatePending.fromJson(json);

      case RevenueWithdrawalStateSucceeded.constructor:
        return RevenueWithdrawalStateSucceeded.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Withdrawal failed
@immutable
final class RevenueWithdrawalStateFailed extends RevenueWithdrawalState {
  const RevenueWithdrawalStateFailed();

  static const String constructor = 'revenueWithdrawalStateFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static RevenueWithdrawalStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const RevenueWithdrawalStateFailed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Withdrawal is pending
@immutable
final class RevenueWithdrawalStatePending extends RevenueWithdrawalState {
  const RevenueWithdrawalStatePending();

  static const String constructor = 'revenueWithdrawalStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static RevenueWithdrawalStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const RevenueWithdrawalStatePending();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Withdrawal succeeded
@immutable
final class RevenueWithdrawalStateSucceeded extends RevenueWithdrawalState {
  RevenueWithdrawalStateSucceeded({required this.date, required this.url});

  /// [date] Point in time (Unix timestamp) when the withdrawal was completed
  final int date;

  /// [url] The URL where the withdrawal transaction can be viewed
  final String url;

  static const String constructor = 'revenueWithdrawalStateSucceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'date': date,
    'url': url,
    '@type': constructor,
  };

  static RevenueWithdrawalStateSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RevenueWithdrawalStateSucceeded(
      date: (json['date'] as int?) ?? 0,
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
