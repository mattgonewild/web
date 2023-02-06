//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ErrorGeneric {
  /// Returns a new [ErrorGeneric] instance.
  ErrorGeneric({
    required this.error,
  });

  GenericErrorContent error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorGeneric &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode);

  @override
  String toString() => 'ErrorGeneric[error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [ErrorGeneric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorGeneric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorGeneric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorGeneric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorGeneric(
        error: GenericErrorContent.fromJson(json[r'error'])!,
      );
    }
    return null;
  }

  static List<ErrorGeneric>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorGeneric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorGeneric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorGeneric> mapFromJson(dynamic json) {
    final map = <String, ErrorGeneric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorGeneric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorGeneric-objects as value to a dart map
  static Map<String, List<ErrorGeneric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorGeneric>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorGeneric.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
  };
}

