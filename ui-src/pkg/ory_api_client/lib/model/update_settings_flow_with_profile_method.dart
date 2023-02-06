//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSettingsFlowWithProfileMethod {
  /// Returns a new [UpdateSettingsFlowWithProfileMethod] instance.
  UpdateSettingsFlowWithProfileMethod({
    this.csrfToken,
    required this.method,
    required this.traits,
  });

  /// The Anti-CSRF Token  This token is only required when performing browser flows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Method  Should be set to profile when trying to update a profile.
  String method;

  /// Traits  The identity's traits.
  Object traits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSettingsFlowWithProfileMethod &&
     other.csrfToken == csrfToken &&
     other.method == method &&
     other.traits == traits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (method.hashCode) +
    (traits.hashCode);

  @override
  String toString() => 'UpdateSettingsFlowWithProfileMethod[csrfToken=$csrfToken, method=$method, traits=$traits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'method'] = this.method;
      json[r'traits'] = this.traits;
    return json;
  }

  /// Returns a new [UpdateSettingsFlowWithProfileMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSettingsFlowWithProfileMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSettingsFlowWithProfileMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSettingsFlowWithProfileMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSettingsFlowWithProfileMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        method: mapValueOfType<String>(json, r'method')!,
        traits: mapValueOfType<Object>(json, r'traits')!,
      );
    }
    return null;
  }

  static List<UpdateSettingsFlowWithProfileMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSettingsFlowWithProfileMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSettingsFlowWithProfileMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSettingsFlowWithProfileMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateSettingsFlowWithProfileMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithProfileMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSettingsFlowWithProfileMethod-objects as value to a dart map
  static Map<String, List<UpdateSettingsFlowWithProfileMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSettingsFlowWithProfileMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithProfileMethod.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'method',
    'traits',
  };
}

