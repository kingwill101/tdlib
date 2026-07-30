import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an invoice to process
@immutable
sealed class InputInvoice extends TdObject {
  const InputInvoice();

  static const String constructor = 'inputInvoice';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputInvoiceMessage]
  /// [InputInvoiceName]
  /// [InputInvoiceTelegram]
  static InputInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputInvoiceMessage.constructor:
        return InputInvoiceMessage.fromJson(json);

      case InputInvoiceName.constructor:
        return InputInvoiceName.fromJson(json);

      case InputInvoiceTelegram.constructor:
        return InputInvoiceTelegram.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invoice from a message of the type messageInvoice or paid media
/// purchase from messagePaidMedia
@immutable
final class InputInvoiceMessage extends InputInvoice {
  InputInvoiceMessage({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier. Use messageProperties.can_be_paid to check
  /// whether the message can be used in the method
  final int messageId;

  static const String constructor = 'inputInvoiceMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static InputInvoiceMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invoice from a link of the type internalLinkTypeInvoice
@immutable
final class InputInvoiceName extends InputInvoice {
  InputInvoiceName({required this.name});

  /// [name] Name of the invoice
  final String name;

  static const String constructor = 'inputInvoiceName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static InputInvoiceName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceName(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invoice for a payment toward Telegram; must not be used in the in-store
/// apps
@immutable
final class InputInvoiceTelegram extends InputInvoice {
  InputInvoiceTelegram({this.purpose});

  /// [purpose] Transaction purpose
  final TelegramPaymentPurpose? purpose;

  static const String constructor = 'inputInvoiceTelegram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'purpose': purpose?.toJson(),
    '@type': constructor,
  };

  static InputInvoiceTelegram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceTelegram(
      purpose: TelegramPaymentPurpose.fromJson(tdMapFromJson(json['purpose'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
