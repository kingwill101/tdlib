import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of session
@immutable
sealed class SessionType extends TdObject {
  const SessionType();

  static const String constructor = 'sessionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SessionTypeAndroid]
  /// [SessionTypeApple]
  /// [SessionTypeBrave]
  /// [SessionTypeChrome]
  /// [SessionTypeEdge]
  /// [SessionTypeFirefox]
  /// [SessionTypeIpad]
  /// [SessionTypeIphone]
  /// [SessionTypeLinux]
  /// [SessionTypeMac]
  /// [SessionTypeOpera]
  /// [SessionTypeSafari]
  /// [SessionTypeUbuntu]
  /// [SessionTypeUnknown]
  /// [SessionTypeVivaldi]
  /// [SessionTypeWindows]
  /// [SessionTypeXbox]
  static SessionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionTypeAndroid.constructor:
        return SessionTypeAndroid.fromJson(json);

      case SessionTypeApple.constructor:
        return SessionTypeApple.fromJson(json);

      case SessionTypeBrave.constructor:
        return SessionTypeBrave.fromJson(json);

      case SessionTypeChrome.constructor:
        return SessionTypeChrome.fromJson(json);

      case SessionTypeEdge.constructor:
        return SessionTypeEdge.fromJson(json);

      case SessionTypeFirefox.constructor:
        return SessionTypeFirefox.fromJson(json);

      case SessionTypeIpad.constructor:
        return SessionTypeIpad.fromJson(json);

      case SessionTypeIphone.constructor:
        return SessionTypeIphone.fromJson(json);

      case SessionTypeLinux.constructor:
        return SessionTypeLinux.fromJson(json);

      case SessionTypeMac.constructor:
        return SessionTypeMac.fromJson(json);

      case SessionTypeOpera.constructor:
        return SessionTypeOpera.fromJson(json);

      case SessionTypeSafari.constructor:
        return SessionTypeSafari.fromJson(json);

      case SessionTypeUbuntu.constructor:
        return SessionTypeUbuntu.fromJson(json);

      case SessionTypeUnknown.constructor:
        return SessionTypeUnknown.fromJson(json);

      case SessionTypeVivaldi.constructor:
        return SessionTypeVivaldi.fromJson(json);

      case SessionTypeWindows.constructor:
        return SessionTypeWindows.fromJson(json);

      case SessionTypeXbox.constructor:
        return SessionTypeXbox.fromJson(json);

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
final class SessionTypeAndroid extends SessionType {
  const SessionTypeAndroid();

  static const String constructor = 'sessionTypeAndroid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeAndroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeAndroid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a generic Apple device
@immutable
final class SessionTypeApple extends SessionType {
  const SessionTypeApple();

  static const String constructor = 'sessionTypeApple';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeApple? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeApple();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Brave browser
@immutable
final class SessionTypeBrave extends SessionType {
  const SessionTypeBrave();

  static const String constructor = 'sessionTypeBrave';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeBrave? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeBrave();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Chrome browser
@immutable
final class SessionTypeChrome extends SessionType {
  const SessionTypeChrome();

  static const String constructor = 'sessionTypeChrome';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeChrome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeChrome();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Edge browser
@immutable
final class SessionTypeEdge extends SessionType {
  const SessionTypeEdge();

  static const String constructor = 'sessionTypeEdge';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeEdge? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeEdge();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Firefox browser
@immutable
final class SessionTypeFirefox extends SessionType {
  const SessionTypeFirefox();

  static const String constructor = 'sessionTypeFirefox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeFirefox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeFirefox();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an iPad device
@immutable
final class SessionTypeIpad extends SessionType {
  const SessionTypeIpad();

  static const String constructor = 'sessionTypeIpad';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeIpad? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeIpad();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an iPhone device
@immutable
final class SessionTypeIphone extends SessionType {
  const SessionTypeIphone();

  static const String constructor = 'sessionTypeIphone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeIphone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeIphone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Linux device
@immutable
final class SessionTypeLinux extends SessionType {
  const SessionTypeLinux();

  static const String constructor = 'sessionTypeLinux';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeLinux? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeLinux();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Mac device
@immutable
final class SessionTypeMac extends SessionType {
  const SessionTypeMac();

  static const String constructor = 'sessionTypeMac';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeMac? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeMac();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Opera browser
@immutable
final class SessionTypeOpera extends SessionType {
  const SessionTypeOpera();

  static const String constructor = 'sessionTypeOpera';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeOpera? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeOpera();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Safari browser
@immutable
final class SessionTypeSafari extends SessionType {
  const SessionTypeSafari();

  static const String constructor = 'sessionTypeSafari';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeSafari? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeSafari();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an Ubuntu device
@immutable
final class SessionTypeUbuntu extends SessionType {
  const SessionTypeUbuntu();

  static const String constructor = 'sessionTypeUbuntu';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeUbuntu? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeUbuntu();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an unknown type of device
@immutable
final class SessionTypeUnknown extends SessionType {
  const SessionTypeUnknown();

  static const String constructor = 'sessionTypeUnknown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeUnknown();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on the Vivaldi browser
@immutable
final class SessionTypeVivaldi extends SessionType {
  const SessionTypeVivaldi();

  static const String constructor = 'sessionTypeVivaldi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeVivaldi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeVivaldi();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on a Windows device
@immutable
final class SessionTypeWindows extends SessionType {
  const SessionTypeWindows();

  static const String constructor = 'sessionTypeWindows';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeWindows? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeWindows();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session is running on an Xbox console
@immutable
final class SessionTypeXbox extends SessionType {
  const SessionTypeXbox();

  static const String constructor = 'sessionTypeXbox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SessionTypeXbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeXbox();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
