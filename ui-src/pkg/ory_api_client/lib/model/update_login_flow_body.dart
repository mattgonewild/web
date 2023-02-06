//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateLoginFlowBody {
  /// Returns a new [UpdateLoginFlowBody] instance.
  UpdateLoginFlowBody({
    this.csrfToken,
    required this.identifier,
    required this.method,
    required this.password,
    this.passwordIdentifier,
    required this.provider,
    this.traits,
    required this.totpCode,
    this.webauthnLogin,
    required this.lookupSecret,
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

  /// Method should be set to \"lookup_secret\" when logging in using the lookup_secret strategy.
  String method;

  /// The user's password.
  String password;

  /// Identifier is the email or username of the user trying to log in. This field is deprecated!
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passwordIdentifier;

  /// The provider to register with
  String provider;

  /// The identity traits. This is a placeholder for the registration flow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? traits;

  /// The TOTP code.
  String totpCode;

  /// Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnLogin;

  /// The lookup secret.
  String lookupSecret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLoginFlowBody &&
     other.csrfToken == csrfToken &&
     other.identifier == identifier &&
     other.method == method &&
     other.password == password &&
     other.passwordIdentifier == passwordIdentifier &&
     other.provider == provider &&
     other.traits == traits &&
     other.totpCode == totpCode &&
     other.webauthnLogin == webauthnLogin &&
     other.lookupSecret == lookupSecret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (identifier.hashCode) +
    (method.hashCode) +
    (password.hashCode) +
    (passwordIdentifier == null ? 0 : passwordIdentifier!.hashCode) +
    (provider.hashCode) +
    (traits == null ? 0 : traits!.hashCode) +
    (totpCode.hashCode) +
    (webauthnLogin == null ? 0 : webauthnLogin!.hashCode) +
    (lookupSecret.hashCode);

  @override
  String toString() => 'UpdateLoginFlowBody[csrfToken=$csrfToken, identifier=$identifier, method=$method, password=$password, passwordIdentifier=$passwordIdentifier, provider=$provider, traits=$traits, totpCode=$totpCode, webauthnLogin=$webauthnLogin, lookupSecret=$lookupSecret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'identifier'] = this.identifier;
      json[r'method'] = this.method;
      json[r'password'] = this.password;
    if (this.passwordIdentifier != null) {
      json[r'password_identifier'] = this.passwordIdentifier;
    } else {
      json[r'password_identifier'] = null;
    }
      json[r'provider'] = this.provider;
    if (this.traits != null) {
      json[r'traits'] = this.traits;
    } else {
      json[r'traits'] = null;
    }
      json[r'totp_code'] = this.totpCode;
    if (this.webauthnLogin != null) {
      json[r'webauthn_login'] = this.webauthnLogin;
    } else {
      json[r'webauthn_login'] = null;
    }
      json[r'lookup_secret'] = this.lookupSecret;
    return json;
  }

  /// Returns a new [UpdateLoginFlowBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLoginFlowBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateLoginFlowBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateLoginFlowBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateLoginFlowBody(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        identifier: mapValueOfType<String>(json, r'identifier')!,
        method: mapValueOfType<String>(json, r'method')!,
        password: mapValueOfType<String>(json, r'password')!,
        passwordIdentifier: mapValueOfType<String>(json, r'password_identifier'),
        provider: mapValueOfType<String>(json, r'provider')!,
        traits: mapValueOfType<Object>(json, r'traits'),
        totpCode: mapValueOfType<String>(json, r'totp_code')!,
        webauthnLogin: mapValueOfType<String>(json, r'webauthn_login'),
        lookupSecret: mapValueOfType<String>(json, r'lookup_secret')!,
      );
    }
    return null;
  }

  static List<UpdateLoginFlowBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLoginFlowBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLoginFlowBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLoginFlowBody> mapFromJson(dynamic json) {
    final map = <String, UpdateLoginFlowBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLoginFlowBody-objects as value to a dart map
  static Map<String, List<UpdateLoginFlowBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLoginFlowBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginFlowBody.listFromJson(entry.value, growable: growable,);
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
    'password',
    'provider',
    'totp_code',
    'lookup_secret',
  };
}

