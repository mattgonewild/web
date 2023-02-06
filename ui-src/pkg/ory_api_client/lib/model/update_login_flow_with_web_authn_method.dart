//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateLoginFlowWithWebAuthnMethod {
  /// Returns a new [UpdateLoginFlowWithWebAuthnMethod] instance.
  UpdateLoginFlowWithWebAuthnMethod({
    this.csrfToken,
    required this.identifier,
    required this.method,
    this.webauthnLogin,
  });

  /// Sending the anti-csrf token is only required for browser login flows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Identifier is the email or username of the user trying to log in.
  String identifier;

  /// Method should be set to \"webAuthn\" when logging in using the WebAuthn strategy.
  String method;

  /// Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnLogin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLoginFlowWithWebAuthnMethod &&
     other.csrfToken == csrfToken &&
     other.identifier == identifier &&
     other.method == method &&
     other.webauthnLogin == webauthnLogin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (identifier.hashCode) +
    (method.hashCode) +
    (webauthnLogin == null ? 0 : webauthnLogin!.hashCode);

  @override
  String toString() => 'UpdateLoginFlowWithWebAuthnMethod[csrfToken=$csrfToken, identifier=$identifier, method=$method, webauthnLogin=$webauthnLogin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'identifier'] = this.identifier;
      json[r'method'] = this.method;
    if (this.webauthnLogin != null) {
      json[r'webauthn_login'] = this.webauthnLogin;
    } else {
      json[r'webauthn_login'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateLoginFlowWithWebAuthnMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLoginFlowWithWebAuthnMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateLoginFlowWithWebAuthnMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateLoginFlowWithWebAuthnMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateLoginFlowWithWebAuthnMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        identifier: mapValueOfType<String>(json, r'identifier')!,
        method: mapValueOfType<String>(json, r'method')!,
        webauthnLogin: mapValueOfType<String>(json, r'webauthn_login'),
      );
    }
    return null;
  }

  static List<UpdateLoginFlowWithWebAuthnMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLoginFlowWithWebAuthnMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLoginFlowWithWebAuthnMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLoginFlowWithWebAuthnMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateLoginFlowWithWebAuthnMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowWithWebAuthnMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLoginFlowWithWebAuthnMethod-objects as value to a dart map
  static Map<String, List<UpdateLoginFlowWithWebAuthnMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLoginFlowWithWebAuthnMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowWithWebAuthnMethod.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identifier',
    'method',
  };
}

