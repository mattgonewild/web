//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateRegistrationFlowWithPasswordMethod {
  /// Returns a new [UpdateRegistrationFlowWithPasswordMethod] instance.
  UpdateRegistrationFlowWithPasswordMethod({
    this.csrfToken,
    required this.method,
    required this.password,
    required this.traits,
  });

  /// The CSRF Token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Method to use  This field must be set to `password` when using the password method.
  String method;

  /// Password to sign the user up with
  String password;

  /// The identity's traits
  Object traits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateRegistrationFlowWithPasswordMethod &&
     other.csrfToken == csrfToken &&
     other.method == method &&
     other.password == password &&
     other.traits == traits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (method.hashCode) +
    (password.hashCode) +
    (traits.hashCode);

  @override
  String toString() => 'UpdateRegistrationFlowWithPasswordMethod[csrfToken=$csrfToken, method=$method, password=$password, traits=$traits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'method'] = this.method;
      json[r'password'] = this.password;
      json[r'traits'] = this.traits;
    return json;
  }

  /// Returns a new [UpdateRegistrationFlowWithPasswordMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateRegistrationFlowWithPasswordMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateRegistrationFlowWithPasswordMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateRegistrationFlowWithPasswordMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateRegistrationFlowWithPasswordMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        method: mapValueOfType<String>(json, r'method')!,
        password: mapValueOfType<String>(json, r'password')!,
        traits: mapValueOfType<Object>(json, r'traits')!,
      );
    }
    return null;
  }

  static List<UpdateRegistrationFlowWithPasswordMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRegistrationFlowWithPasswordMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRegistrationFlowWithPasswordMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateRegistrationFlowWithPasswordMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateRegistrationFlowWithPasswordMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRegistrationFlowWithPasswordMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateRegistrationFlowWithPasswordMethod-objects as value to a dart map
  static Map<String, List<UpdateRegistrationFlowWithPasswordMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateRegistrationFlowWithPasswordMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRegistrationFlowWithPasswordMethod.listFromJson(entry.value, growable: growable,);
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
    'password',
    'traits',
  };
}

