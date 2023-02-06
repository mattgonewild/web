//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateLoginFlowWithLookupSecretMethod {
  /// Returns a new [UpdateLoginFlowWithLookupSecretMethod] instance.
  UpdateLoginFlowWithLookupSecretMethod({
    this.csrfToken,
    required this.lookupSecret,
    required this.method,
  });

  /// Sending the anti-csrf token is only required for browser login flows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// The lookup secret.
  String lookupSecret;

  /// Method should be set to \"lookup_secret\" when logging in using the lookup_secret strategy.
  String method;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLoginFlowWithLookupSecretMethod &&
     other.csrfToken == csrfToken &&
     other.lookupSecret == lookupSecret &&
     other.method == method;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (lookupSecret.hashCode) +
    (method.hashCode);

  @override
  String toString() => 'UpdateLoginFlowWithLookupSecretMethod[csrfToken=$csrfToken, lookupSecret=$lookupSecret, method=$method]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'lookup_secret'] = this.lookupSecret;
      json[r'method'] = this.method;
    return json;
  }

  /// Returns a new [UpdateLoginFlowWithLookupSecretMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLoginFlowWithLookupSecretMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateLoginFlowWithLookupSecretMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateLoginFlowWithLookupSecretMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateLoginFlowWithLookupSecretMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        lookupSecret: mapValueOfType<String>(json, r'lookup_secret')!,
        method: mapValueOfType<String>(json, r'method')!,
      );
    }
    return null;
  }

  static List<UpdateLoginFlowWithLookupSecretMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLoginFlowWithLookupSecretMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLoginFlowWithLookupSecretMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLoginFlowWithLookupSecretMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateLoginFlowWithLookupSecretMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowWithLookupSecretMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLoginFlowWithLookupSecretMethod-objects as value to a dart map
  static Map<String, List<UpdateLoginFlowWithLookupSecretMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLoginFlowWithLookupSecretMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowWithLookupSecretMethod.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lookup_secret',
    'method',
  };
}

