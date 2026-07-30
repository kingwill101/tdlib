import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the exact type of problem with a call
@immutable
sealed class CallProblem extends TdObject {
  const CallProblem();

  static const String constructor = 'callProblem';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CallProblemDistortedSpeech]
  /// [CallProblemDistortedVideo]
  /// [CallProblemDropped]
  /// [CallProblemEcho]
  /// [CallProblemInterruptions]
  /// [CallProblemNoise]
  /// [CallProblemPixelatedVideo]
  /// [CallProblemSilentLocal]
  /// [CallProblemSilentRemote]
  static CallProblem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallProblemDistortedSpeech.constructor:
        return CallProblemDistortedSpeech.fromJson(json);

      case CallProblemDistortedVideo.constructor:
        return CallProblemDistortedVideo.fromJson(json);

      case CallProblemDropped.constructor:
        return CallProblemDropped.fromJson(json);

      case CallProblemEcho.constructor:
        return CallProblemEcho.fromJson(json);

      case CallProblemInterruptions.constructor:
        return CallProblemInterruptions.fromJson(json);

      case CallProblemNoise.constructor:
        return CallProblemNoise.fromJson(json);

      case CallProblemPixelatedVideo.constructor:
        return CallProblemPixelatedVideo.fromJson(json);

      case CallProblemSilentLocal.constructor:
        return CallProblemSilentLocal.fromJson(json);

      case CallProblemSilentRemote.constructor:
        return CallProblemSilentRemote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The speech was distorted
@immutable
final class CallProblemDistortedSpeech extends CallProblem {
  const CallProblemDistortedSpeech();

  static const String constructor = 'callProblemDistortedSpeech';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemDistortedSpeech? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedSpeech();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The video was distorted
@immutable
final class CallProblemDistortedVideo extends CallProblem {
  const CallProblemDistortedVideo();

  static const String constructor = 'callProblemDistortedVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemDistortedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call ended unexpectedly
@immutable
final class CallProblemDropped extends CallProblem {
  const CallProblemDropped();

  static const String constructor = 'callProblemDropped';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemDropped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDropped();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user heard their own voice
@immutable
final class CallProblemEcho extends CallProblem {
  const CallProblemEcho();

  static const String constructor = 'callProblemEcho';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemEcho? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemEcho();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The other side kept disappearing
@immutable
final class CallProblemInterruptions extends CallProblem {
  const CallProblemInterruptions();

  static const String constructor = 'callProblemInterruptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemInterruptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemInterruptions();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user heard background noise
@immutable
final class CallProblemNoise extends CallProblem {
  const CallProblemNoise();

  static const String constructor = 'callProblemNoise';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemNoise? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemNoise();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The video was pixelated
@immutable
final class CallProblemPixelatedVideo extends CallProblem {
  const CallProblemPixelatedVideo();

  static const String constructor = 'callProblemPixelatedVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemPixelatedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemPixelatedVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user couldn't hear the other side
@immutable
final class CallProblemSilentLocal extends CallProblem {
  const CallProblemSilentLocal();

  static const String constructor = 'callProblemSilentLocal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemSilentLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentLocal();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The other side couldn't hear the user
@immutable
final class CallProblemSilentRemote extends CallProblem {
  const CallProblemSilentRemote();

  static const String constructor = 'callProblemSilentRemote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallProblemSilentRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentRemote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
