//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class IdentityWithCredentials {
  /// Returns a new [IdentityWithCredentials] instance.
  IdentityWithCredentials({
    this.oidc,
    this.password,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityWithCredentialsOidc? oidc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityWithCredentialsPassword? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityWithCredentials &&
     other.oidc == oidc &&
     other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (oidc == null ? 0 : oidc!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'IdentityWithCredentials[oidc=$oidc, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.oidc != null) {
      json[r'oidc'] = this.oidc;
    } else {
      json[r'oidc'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityWithCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityWithCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityWithCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityWithCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityWithCredentials(
        oidc: IdentityWithCredentialsOidc.fromJson(json[r'oidc']),
        password: IdentityWithCredentialsPassword.fromJson(json[r'password']),
      );
    }
    return null;
  }

  static List<IdentityWithCredentials>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityWithCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityWithCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityWithCredentials> mapFromJson(dynamic json) {
    final map = <String, IdentityWithCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityWithCredentials-objects as value to a dart map
  static Map<String, List<IdentityWithCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityWithCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentials.listFromJson(entry.value, growable: growable,);
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

