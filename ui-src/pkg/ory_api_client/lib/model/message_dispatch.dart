//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class MessageDispatch {
  /// Returns a new [MessageDispatch] instance.
  MessageDispatch({
    required this.createdAt,
    this.error,
    required this.id,
    required this.messageId,
    required this.status,
    required this.updatedAt,
  });

  /// CreatedAt is a helper struct field for gobuffalo.pop.
  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? error;

  /// The ID of this message dispatch
  String id;

  /// The ID of the message being dispatched
  String messageId;

  /// The status of this dispatch Either \"failed\" or \"success\" failed CourierMessageDispatchStatusFailed success CourierMessageDispatchStatusSuccess
  MessageDispatchStatusEnum status;

  /// UpdatedAt is a helper struct field for gobuffalo.pop.
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessageDispatch &&
     other.createdAt == createdAt &&
     other.error == error &&
     other.id == id &&
     other.messageId == messageId &&
     other.status == status &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (id.hashCode) +
    (messageId.hashCode) +
    (status.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'MessageDispatch[createdAt=$createdAt, error=$error, id=$id, messageId=$messageId, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
      json[r'id'] = this.id;
      json[r'message_id'] = this.messageId;
      json[r'status'] = this.status;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MessageDispatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessageDispatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessageDispatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessageDispatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessageDispatch(
        createdAt: mapDateTime(json, r'created_at', '')!,
        error: mapValueOfType<Object>(json, r'error'),
        id: mapValueOfType<String>(json, r'id')!,
        messageId: mapValueOfType<String>(json, r'message_id')!,
        status: MessageDispatchStatusEnum.fromJson(json[r'status'])!,
        updatedAt: mapDateTime(json, r'updated_at', '')!,
      );
    }
    return null;
  }

  static List<MessageDispatch>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageDispatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageDispatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessageDispatch> mapFromJson(dynamic json) {
    final map = <String, MessageDispatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDispatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessageDispatch-objects as value to a dart map
  static Map<String, List<MessageDispatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessageDispatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessageDispatch.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'id',
    'message_id',
    'status',
    'updated_at',
  };
}

/// The status of this dispatch Either \"failed\" or \"success\" failed CourierMessageDispatchStatusFailed success CourierMessageDispatchStatusSuccess
class MessageDispatchStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageDispatchStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const failed = MessageDispatchStatusEnum._(r'failed');
  static const success = MessageDispatchStatusEnum._(r'success');

  /// List of all possible values in this [enum][MessageDispatchStatusEnum].
  static const values = <MessageDispatchStatusEnum>[
    failed,
    success,
  ];

  static MessageDispatchStatusEnum? fromJson(dynamic value) => MessageDispatchStatusEnumTypeTransformer().decode(value);

  static List<MessageDispatchStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageDispatchStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageDispatchStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageDispatchStatusEnum] to String,
/// and [decode] dynamic data back to [MessageDispatchStatusEnum].
class MessageDispatchStatusEnumTypeTransformer {
  factory MessageDispatchStatusEnumTypeTransformer() => _instance ??= const MessageDispatchStatusEnumTypeTransformer._();

  const MessageDispatchStatusEnumTypeTransformer._();

  String encode(MessageDispatchStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageDispatchStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageDispatchStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'failed': return MessageDispatchStatusEnum.failed;
        case r'success': return MessageDispatchStatusEnum.success;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageDispatchStatusEnumTypeTransformer] instance.
  static MessageDispatchStatusEnumTypeTransformer? _instance;
}


