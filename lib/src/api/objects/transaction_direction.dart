import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes direction of transactions in a transaction list
@immutable
sealed class TransactionDirection extends TdObject {
  const TransactionDirection();

  static const String constructor = 'transactionDirection';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TransactionDirectionIncoming]
  /// [TransactionDirectionOutgoing]
  static TransactionDirection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TransactionDirectionIncoming.constructor:
        return TransactionDirectionIncoming.fromJson(json);

      case TransactionDirectionOutgoing.constructor:
        return TransactionDirectionOutgoing.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is incoming and increases the amount of owned currency
@immutable
final class TransactionDirectionIncoming extends TransactionDirection {
  const TransactionDirectionIncoming();

  static const String constructor = 'transactionDirectionIncoming';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TransactionDirectionIncoming? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TransactionDirectionIncoming();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is outgoing and decreases the amount of owned currency
@immutable
final class TransactionDirectionOutgoing extends TransactionDirection {
  const TransactionDirectionOutgoing();

  static const String constructor = 'transactionDirectionOutgoing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TransactionDirectionOutgoing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TransactionDirectionOutgoing();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
