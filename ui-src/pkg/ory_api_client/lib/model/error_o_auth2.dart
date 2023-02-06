//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ErrorOAuth2 {
  /// Returns a new [ErrorOAuth2] instance.
  ErrorOAuth2({
    this.error,
    this.errorDebug,
    this.errorDescription,
    this.errorHint,
    this.statusCode,
  });

  /// Error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Error Debug Information  Only available in dev mode.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorDebug;

  /// Error Description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorDescription;

  /// Error Hint  Helps the user identify the error cause.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorHint;

  /// HTTP Status Code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorOAuth2 &&
     other.error == error &&
     other.errorDebug == errorDebug &&
     other.errorDescription == errorDescription &&
     other.errorHint == errorHint &&
     other.statusCode == statusCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (errorDebug == null ? 0 : errorDebug!.hashCode) +
    (errorDescription == null ? 0 : errorDescription!.hashCode) +
    (errorHint == null ? 0 : errorHint!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode);

  @override
  String toString() => 'ErrorOAuth2[error=$error, errorDebug=$errorDebug, errorDescription=$errorDescription, errorHint=$errorHint, statusCode=$statusCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.errorDebug != null) {
      json[r'error_debug'] = this.errorDebug;
    } else {
      json[r'error_debug'] = null;
    }
    if (this.errorDescription != null) {
      json[r'error_description'] = this.errorDescription;
    } else {
      json[r'error_description'] = null;
    }
    if (this.errorHint != null) {
      json[r'error_hint'] = this.errorHint;
    } else {
      json[r'error_hint'] = null;
    }
    if (this.statusCode != null) {
      json[r'status_code'] = this.statusCode;
    } else {
      json[r'status_code'] = null;
    }
    return json;
  }

  /// Returns a new [ErrorOAuth2] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorOAuth2? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorOAuth2[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorOAuth2[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorOAuth2(
        error: mapValueOfType<String>(json, r'error'),
        errorDebug: mapValueOfType<String>(json, r'error_debug'),
        errorDescription: mapValueOfType<String>(json, r'error_description'),
        errorHint: mapValueOfType<String>(json, r'error_hint'),
        statusCode: mapValueOfType<int>(json, r'status_code'),
      );
    }
    return null;
  }

  static List<ErrorOAuth2>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorOAuth2>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorOAuth2.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorOAuth2> mapFromJson(dynamic json) {
    final map = <String, ErrorOAuth2>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorOAuth2.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorOAuth2-objects as value to a dart map
  static Map<String, List<ErrorOAuth2>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorOAuth2>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorOAuth2.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

