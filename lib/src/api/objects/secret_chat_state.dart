import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current secret chat state
@immutable
sealed class SecretChatState extends TdObject {
  const SecretChatState();

  static const String constructor = 'secretChatState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SecretChatStateClosed]
  /// [SecretChatStatePending]
  /// [SecretChatStateReady]
  static SecretChatState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SecretChatStateClosed.constructor:
        return SecretChatStateClosed.fromJson(json);

      case SecretChatStatePending.constructor:
        return SecretChatStatePending.fromJson(json);

      case SecretChatStateReady.constructor:
        return SecretChatStateReady.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The secret chat is closed
@immutable
final class SecretChatStateClosed extends SecretChatState {
  const SecretChatStateClosed();

  static const String constructor = 'secretChatStateClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SecretChatStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateClosed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The secret chat is not yet created; waiting for the other user to get
/// online
@immutable
final class SecretChatStatePending extends SecretChatState {
  const SecretChatStatePending();

  static const String constructor = 'secretChatStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SecretChatStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStatePending();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The secret chat is ready to use
@immutable
final class SecretChatStateReady extends SecretChatState {
  const SecretChatStateReady();

  static const String constructor = 'secretChatStateReady';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SecretChatStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateReady();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
