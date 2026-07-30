import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about network usage
@immutable
sealed class NetworkStatisticsEntry extends TdObject {
  const NetworkStatisticsEntry();

  static const String constructor = 'networkStatisticsEntry';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [NetworkStatisticsEntryCall]
  /// [NetworkStatisticsEntryFile]
  static NetworkStatisticsEntry? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NetworkStatisticsEntryCall.constructor:
        return NetworkStatisticsEntryCall.fromJson(json);

      case NetworkStatisticsEntryFile.constructor:
        return NetworkStatisticsEntryFile.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains information about the total amount of data that was used for
/// calls
@immutable
final class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  NetworkStatisticsEntryCall({
    this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType? networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  /// [duration] Total call duration, in seconds
  final double duration;

  static const String constructor = 'networkStatisticsEntryCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'network_type': networkType?.toJson(),
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    'duration': duration,
    '@type': constructor,
  };

  static NetworkStatisticsEntryCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryCall(
      networkType: NetworkType.fromJson(tdMapFromJson(json['network_type'])),
      sentBytes: (json['sent_bytes'] as int?) ?? 0,
      receivedBytes: (json['received_bytes'] as int?) ?? 0,
      duration: ((json['duration'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains information about the total amount of data that was used to send
/// and receive files
@immutable
final class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  NetworkStatisticsEntryFile({
    this.fileType,
    this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
  });

  /// [fileType] Type of the file the data is part of; pass null if the data
  /// isn't related to files
  final FileType? fileType;

  /// [networkType] Type of the network the data was sent through. Call
  /// setNetworkType to maintain the actual network type
  final NetworkType? networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  static const String constructor = 'networkStatisticsEntryFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_type': fileType?.toJson(),
    'network_type': networkType?.toJson(),
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    '@type': constructor,
  };

  static NetworkStatisticsEntryFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryFile(
      fileType: FileType.fromJson(tdMapFromJson(json['file_type'])),
      networkType: NetworkType.fromJson(tdMapFromJson(json['network_type'])),
      sentBytes: (json['sent_bytes'] as int?) ?? 0,
      receivedBytes: (json['received_bytes'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
