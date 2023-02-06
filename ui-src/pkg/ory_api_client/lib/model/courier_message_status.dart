//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

/// A Message's Status
class CourierMessageStatus {
  /// Instantiate a new enum with the provided [value].
  const CourierMessageStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const queued = CourierMessageStatus._(r'queued');
  static const sent = CourierMessageStatus._(r'sent');
  static const processing = CourierMessageStatus._(r'processing');
  static const abandoned = CourierMessageStatus._(r'abandoned');

  /// List of all possible values in this [enum][CourierMessageStatus].
  static const values = <CourierMessageStatus>[
    queued,
    sent,
    processing,
    abandoned,
  ];

  static CourierMessageStatus? fromJson(dynamic value) => CourierMessageStatusTypeTransformer().decode(value);

  static List<CourierMessageStatus>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CourierMessageStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CourierMessageStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CourierMessageStatus] to String,
/// and [decode] dynamic data back to [CourierMessageStatus].
class CourierMessageStatusTypeTransformer {
  factory CourierMessageStatusTypeTransformer() => _instance ??= const CourierMessageStatusTypeTransformer._();

  const CourierMessageStatusTypeTransformer._();

  String encode(CourierMessageStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CourierMessageStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CourierMessageStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'queued': return CourierMessageStatus.queued;
        case r'sent': return CourierMessageStatus.sent;
        case r'processing': return CourierMessageStatus.processing;
        case r'abandoned': return CourierMessageStatus.abandoned;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CourierMessageStatusTypeTransformer] instance.
  static CourierMessageStatusTypeTransformer? _instance;
}

