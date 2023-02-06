//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

/// It can either be `email` or `phone`
class CourierMessageType {
  /// Instantiate a new enum with the provided [value].
  const CourierMessageType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = CourierMessageType._(r'email');
  static const phone = CourierMessageType._(r'phone');

  /// List of all possible values in this [enum][CourierMessageType].
  static const values = <CourierMessageType>[
    email,
    phone,
  ];

  static CourierMessageType? fromJson(dynamic value) => CourierMessageTypeTypeTransformer().decode(value);

  static List<CourierMessageType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CourierMessageType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CourierMessageType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CourierMessageType] to String,
/// and [decode] dynamic data back to [CourierMessageType].
class CourierMessageTypeTypeTransformer {
  factory CourierMessageTypeTypeTransformer() => _instance ??= const CourierMessageTypeTypeTransformer._();

  const CourierMessageTypeTypeTransformer._();

  String encode(CourierMessageType data) => data.value;

  /// Decodes a [dynamic value][data] to a CourierMessageType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CourierMessageType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return CourierMessageType.email;
        case r'phone': return CourierMessageType.phone;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CourierMessageTypeTypeTransformer] instance.
  static CourierMessageTypeTypeTransformer? _instance;
}

