import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a chat is reported
@immutable
sealed class ReportReason extends TdObject {
  const ReportReason();

  static const String constructor = 'reportReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReportReasonChildAbuse]
  /// [ReportReasonCopyright]
  /// [ReportReasonCustom]
  /// [ReportReasonFake]
  /// [ReportReasonIllegalDrugs]
  /// [ReportReasonPersonalDetails]
  /// [ReportReasonPornography]
  /// [ReportReasonSpam]
  /// [ReportReasonUnrelatedLocation]
  /// [ReportReasonViolence]
  static ReportReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportReasonChildAbuse.constructor:
        return ReportReasonChildAbuse.fromJson(json);

      case ReportReasonCopyright.constructor:
        return ReportReasonCopyright.fromJson(json);

      case ReportReasonCustom.constructor:
        return ReportReasonCustom.fromJson(json);

      case ReportReasonFake.constructor:
        return ReportReasonFake.fromJson(json);

      case ReportReasonIllegalDrugs.constructor:
        return ReportReasonIllegalDrugs.fromJson(json);

      case ReportReasonPersonalDetails.constructor:
        return ReportReasonPersonalDetails.fromJson(json);

      case ReportReasonPornography.constructor:
        return ReportReasonPornography.fromJson(json);

      case ReportReasonSpam.constructor:
        return ReportReasonSpam.fromJson(json);

      case ReportReasonUnrelatedLocation.constructor:
        return ReportReasonUnrelatedLocation.fromJson(json);

      case ReportReasonViolence.constructor:
        return ReportReasonViolence.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat has child abuse related content
@immutable
final class ReportReasonChildAbuse extends ReportReason {
  const ReportReasonChildAbuse();

  static const String constructor = 'reportReasonChildAbuse';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonChildAbuse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonChildAbuse();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat contains copyrighted content
@immutable
final class ReportReasonCopyright extends ReportReason {
  const ReportReasonCopyright();

  static const String constructor = 'reportReasonCopyright';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonCopyright? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonCopyright();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A custom reason provided by the user
@immutable
final class ReportReasonCustom extends ReportReason {
  const ReportReasonCustom();

  static const String constructor = 'reportReasonCustom';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonCustom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonCustom();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat represents a fake account
@immutable
final class ReportReasonFake extends ReportReason {
  const ReportReasonFake();

  static const String constructor = 'reportReasonFake';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonFake? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonFake();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat has illegal drugs related content
@immutable
final class ReportReasonIllegalDrugs extends ReportReason {
  const ReportReasonIllegalDrugs();

  static const String constructor = 'reportReasonIllegalDrugs';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonIllegalDrugs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonIllegalDrugs();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat contains messages with personal details
@immutable
final class ReportReasonPersonalDetails extends ReportReason {
  const ReportReasonPersonalDetails();

  static const String constructor = 'reportReasonPersonalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonPersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonPersonalDetails();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat contains pornographic messages
@immutable
final class ReportReasonPornography extends ReportReason {
  const ReportReasonPornography();

  static const String constructor = 'reportReasonPornography';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonPornography? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonPornography();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat contains spam messages
@immutable
final class ReportReasonSpam extends ReportReason {
  const ReportReasonSpam();

  static const String constructor = 'reportReasonSpam';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonSpam();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The location-based chat is unrelated to its stated location
@immutable
final class ReportReasonUnrelatedLocation extends ReportReason {
  const ReportReasonUnrelatedLocation();

  static const String constructor = 'reportReasonUnrelatedLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonUnrelatedLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonUnrelatedLocation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat promotes violence
@immutable
final class ReportReasonViolence extends ReportReason {
  const ReportReasonViolence();

  static const String constructor = 'reportReasonViolence';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportReasonViolence? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportReasonViolence();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
