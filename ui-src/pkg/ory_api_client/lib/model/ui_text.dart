//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UiText {
  /// Returns a new [UiText] instance.
  UiText({
    this.context,
    required this.id,
    required this.text,
    required this.type,
  });

  /// The message's context. Useful when customizing messages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? context;

  int id;

  /// The message text. Written in american english.
  String text;

  /// The message type. info Info error Error success Success
  UiTextTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UiText &&
     other.context == context &&
     other.id == id &&
     other.text == text &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (context == null ? 0 : context!.hashCode) +
    (id.hashCode) +
    (text.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'UiText[context=$context, id=$id, text=$text, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
      json[r'id'] = this.id;
      json[r'text'] = this.text;
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [UiText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UiText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UiText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UiText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UiText(
        context: mapValueOfType<Object>(json, r'context'),
        id: mapValueOfType<int>(json, r'id')!,
        text: mapValueOfType<String>(json, r'text')!,
        type: UiTextTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<UiText>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UiText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UiText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UiText> mapFromJson(dynamic json) {
    final map = <String, UiText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UiText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UiText-objects as value to a dart map
  static Map<String, List<UiText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UiText>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UiText.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'text',
    'type',
  };
}

/// The message type. info Info error Error success Success
class UiTextTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UiTextTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const info = UiTextTypeEnum._(r'info');
  static const error = UiTextTypeEnum._(r'error');
  static const success = UiTextTypeEnum._(r'success');

  /// List of all possible values in this [enum][UiTextTypeEnum].
  static const values = <UiTextTypeEnum>[
    info,
    error,
    success,
  ];

  static UiTextTypeEnum? fromJson(dynamic value) => UiTextTypeEnumTypeTransformer().decode(value);

  static List<UiTextTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UiTextTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UiTextTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UiTextTypeEnum] to String,
/// and [decode] dynamic data back to [UiTextTypeEnum].
class UiTextTypeEnumTypeTransformer {
  factory UiTextTypeEnumTypeTransformer() => _instance ??= const UiTextTypeEnumTypeTransformer._();

  const UiTextTypeEnumTypeTransformer._();

  String encode(UiTextTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UiTextTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UiTextTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'info': return UiTextTypeEnum.info;
        case r'error': return UiTextTypeEnum.error;
        case r'success': return UiTextTypeEnum.success;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UiTextTypeEnumTypeTransformer] instance.
  static UiTextTypeEnumTypeTransformer? _instance;
}


