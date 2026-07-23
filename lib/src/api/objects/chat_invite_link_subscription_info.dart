import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about subscription plan that must be paid by the user
/// to use a chat invite link
@immutable
final class ChatInviteLinkSubscriptionInfo extends TdObject {
  ChatInviteLinkSubscriptionInfo({
    this.pricing,
    required this.canReuse,
    required this.formId,
  });

  /// [pricing] Information about subscription plan that must be paid by the
  /// user to use the link
  final StarSubscriptionPricing? pricing;

  /// [canReuse] True, if the user has already paid for the subscription and can
  /// use joinChatByInviteLink to join the subscribed chat again
  final bool canReuse;

  /// [formId] Identifier of the payment form to use for subscription payment; 0
  /// if the subscription can't be paid
  final int formId;

  static const String constructor = 'chatInviteLinkSubscriptionInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'pricing': pricing?.toJson(),
    'can_reuse': canReuse,
    'form_id': formId.toString(),
    '@type': constructor,
  };

  static ChatInviteLinkSubscriptionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkSubscriptionInfo(
      pricing: StarSubscriptionPricing.fromJson(tdMapFromJson(json['pricing'])),
      canReuse: (json['can_reuse'] as bool?) ?? false,
      formId: int.tryParse((json['form_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
