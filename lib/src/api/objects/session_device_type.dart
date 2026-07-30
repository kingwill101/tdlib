import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of device from which session was created
@immutable
sealed class SessionDeviceType extends TdObject {
  const SessionDeviceType();

  static const String constructor = 'sessionDeviceType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SessionDeviceTypeAndroid]
  /// [SessionDeviceTypeApple]
  /// [SessionDeviceTypeBrave]
  /// [SessionDeviceTypeChrome]
  /// [SessionDeviceTypeEdge]
  /// [SessionDeviceTypeFirefox]
  /// [SessionDeviceTypeIpad]
  /// [SessionDeviceTypeIphone]
  /// [SessionDeviceTypeLinux]
  /// [SessionDeviceTypeMac]
  /// [SessionDeviceTypeOpera]
  /// [SessionDeviceTypeSafari]
  /// [SessionDeviceTypeUbuntu]
  /// [SessionDeviceTypeUnknown]
  /// [SessionDeviceTypeVivaldi]
  /// [SessionDeviceTypeWindows]
  /// [SessionDeviceTypeXbox]
  static SessionDeviceType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionDeviceTypeAndroid.constructor:
        return SessionDeviceTypeAndroid.fromJson(json);

      case SessionDeviceTypeApple.constructor:
        return SessionDeviceTypeApple.fromJson(json);

      case SessionDeviceTypeBrave.constructor:
        return SessionDeviceTypeBrave.fromJson(json);

      case SessionDeviceTypeChrome.constructor:
        return SessionDeviceTypeChrome.fromJson(json);

      case SessionDeviceTypeEdge.constructor:
        return SessionDeviceTypeEdge.fromJson(json);

      case SessionDeviceTypeFirefox.constructor:
        return SessionDeviceTypeFirefox.fromJson(json);

      case SessionDeviceTypeIpad.constructor:
        return SessionDeviceTypeIpad.fromJson(json);

      case SessionDeviceTypeIphone.constructor:
        return SessionDeviceTypeIphone.fromJson(json);

      case SessionDeviceTypeLinux.constructor:
        return SessionDeviceTypeLinux.fromJson(json);

      case SessionDeviceTypeMac.constructor:
        return SessionDeviceTypeMac.fromJson(json);

      case SessionDeviceTypeOpera.constructor:
        return SessionDeviceTypeOpera.fromJson(json);

      case SessionDeviceTypeSafari.constructor:
        return SessionDeviceTypeSafari.fromJson(json);

      case SessionDeviceTypeUbuntu.constructor:
        return SessionDeviceTypeUbuntu.fromJson(json);

      case SessionDeviceTypeUnknown.constructor:
        return SessionDeviceTypeUnknown.fromJson(json);

      case SessionDeviceTypeVivaldi.constructor:
        return SessionDeviceTypeVivaldi.fromJson(json);

      case SessionDeviceTypeWindows.constructor:
        return SessionDeviceTypeWindows.fromJson(json);

      case SessionDeviceTypeXbox.constructor:
        return SessionDeviceTypeXbox.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an Android device
@immutable
final class SessionDeviceTypeAndroid extends SessionDeviceType {
  const SessionDeviceTypeAndroid();

  static const String constructor = 'sessionDeviceTypeAndroid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeAndroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeAndroid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a generic Apple device
@immutable
final class SessionDeviceTypeApple extends SessionDeviceType {
  const SessionDeviceTypeApple();

  static const String constructor = 'sessionDeviceTypeApple';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeApple? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeApple();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Brave browser
@immutable
final class SessionDeviceTypeBrave extends SessionDeviceType {
  const SessionDeviceTypeBrave();

  static const String constructor = 'sessionDeviceTypeBrave';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeBrave? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeBrave();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Chrome browser
@immutable
final class SessionDeviceTypeChrome extends SessionDeviceType {
  const SessionDeviceTypeChrome();

  static const String constructor = 'sessionDeviceTypeChrome';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeChrome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeChrome();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Edge browser
@immutable
final class SessionDeviceTypeEdge extends SessionDeviceType {
  const SessionDeviceTypeEdge();

  static const String constructor = 'sessionDeviceTypeEdge';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeEdge? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeEdge();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Firefox browser
@immutable
final class SessionDeviceTypeFirefox extends SessionDeviceType {
  const SessionDeviceTypeFirefox();

  static const String constructor = 'sessionDeviceTypeFirefox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeFirefox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeFirefox();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an iPad device
@immutable
final class SessionDeviceTypeIpad extends SessionDeviceType {
  const SessionDeviceTypeIpad();

  static const String constructor = 'sessionDeviceTypeIpad';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeIpad? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeIpad();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an iPhone device
@immutable
final class SessionDeviceTypeIphone extends SessionDeviceType {
  const SessionDeviceTypeIphone();

  static const String constructor = 'sessionDeviceTypeIphone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeIphone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeIphone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Linux device
@immutable
final class SessionDeviceTypeLinux extends SessionDeviceType {
  const SessionDeviceTypeLinux();

  static const String constructor = 'sessionDeviceTypeLinux';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeLinux? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeLinux();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Mac device
@immutable
final class SessionDeviceTypeMac extends SessionDeviceType {
  const SessionDeviceTypeMac();

  static const String constructor = 'sessionDeviceTypeMac';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeMac? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeMac();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Opera browser
@immutable
final class SessionDeviceTypeOpera extends SessionDeviceType {
  const SessionDeviceTypeOpera();

  static const String constructor = 'sessionDeviceTypeOpera';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeOpera? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeOpera();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Safari browser
@immutable
final class SessionDeviceTypeSafari extends SessionDeviceType {
  const SessionDeviceTypeSafari();

  static const String constructor = 'sessionDeviceTypeSafari';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeSafari? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeSafari();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an Ubuntu device
@immutable
final class SessionDeviceTypeUbuntu extends SessionDeviceType {
  const SessionDeviceTypeUbuntu();

  static const String constructor = 'sessionDeviceTypeUbuntu';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeUbuntu? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeUbuntu();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an unknown type of device
@immutable
final class SessionDeviceTypeUnknown extends SessionDeviceType {
  const SessionDeviceTypeUnknown();

  static const String constructor = 'sessionDeviceTypeUnknown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeUnknown();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Vivaldi browser
@immutable
final class SessionDeviceTypeVivaldi extends SessionDeviceType {
  const SessionDeviceTypeVivaldi();

  static const String constructor = 'sessionDeviceTypeVivaldi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeVivaldi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeVivaldi();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Windows device
@immutable
final class SessionDeviceTypeWindows extends SessionDeviceType {
  const SessionDeviceTypeWindows();

  static const String constructor = 'sessionDeviceTypeWindows';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeWindows? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeWindows();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an Xbox console
@immutable
final class SessionDeviceTypeXbox extends SessionDeviceType {
  const SessionDeviceTypeXbox();

  static const String constructor = 'sessionDeviceTypeXbox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionDeviceTypeXbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionDeviceTypeXbox();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
