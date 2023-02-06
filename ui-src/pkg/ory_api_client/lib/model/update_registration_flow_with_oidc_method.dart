//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateRegistrationFlowWithOidcMethod {
  /// Returns a new [UpdateRegistrationFlowWithOidcMethod] instance.
  UpdateRegistrationFlowWithOidcMethod({
    this.csrfToken,
    required this.method,
    required this.provider,
    this.traits,
  });

  /// The CSRF Token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Method to use  This field must be set to `oidc` when using the oidc method.
  String method;

  /// The provider to register with
  String provider;

  /// The identity traits
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? traits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateRegistrationFlowWithOidcMethod &&
     other.csrfToken == csrfToken &&
     other.method == method &&
     other.provider == provider &&
     other.traits == traits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (method.hashCode) +
    (provider.hashCode) +
    (traits == null ? 0 : traits!.hashCode);

  @override
  String toString() => 'UpdateRegistrationFlowWithOidcMethod[csrfToken=$csrfToken, method=$method, provider=$provider, traits=$traits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'method'] = this.method;
      json[r'provider'] = this.provider;
    if (this.traits != null) {
      json[r'traits'] = this.traits;
    } else {
      json[r'traits'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateRegistrationFlowWithOidcMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateRegistrationFlowWithOidcMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateRegistrationFlowWithOidcMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateRegistrationFlowWithOidcMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateRegistrationFlowWithOidcMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        method: mapValueOfType<String>(json, r'method')!,
        provider: mapValueOfType<String>(json, r'provider')!,
        traits: mapValueOfType<Object>(json, r'traits'),
      );
    }
    return null;
  }

  static List<UpdateRegistrationFlowWithOidcMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRegistrationFlowWithOidcMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRegistrationFlowWithOidcMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateRegistrationFlowWithOidcMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateRegistrationFlowWithOidcMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRegistrationFlowWithOidcMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateRegistrationFlowWithOidcMethod-objects as value to a dart map
  static Map<String, List<UpdateRegistrationFlowWithOidcMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateRegistrationFlowWithOidcMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRegistrationFlowWithOidcMethod.listFromJson(entry.value, growable: growable,);
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
    'provider',
  };
}

