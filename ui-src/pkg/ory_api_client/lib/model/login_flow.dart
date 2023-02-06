//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class LoginFlow {
  /// Returns a new [LoginFlow] instance.
  LoginFlow({
    this.active,
    this.createdAt,
    required this.expiresAt,
    required this.id,
    required this.issuedAt,
    this.oauth2LoginChallenge,
    this.oauth2LoginRequest,
    this.refresh,
    required this.requestUrl,
    this.requestedAal,
    this.returnTo,
    required this.type,
    required this.ui,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityCredentialsType? active;

  /// CreatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated.
  DateTime expiresAt;

  /// ID represents the flow's unique ID. When performing the login flow, this represents the id in the login UI's query parameter: http://<selfservice.flows.login.ui_url>/?flow=<flow_id>
  String id;

  /// IssuedAt is the time (UTC) when the flow started.
  DateTime issuedAt;

  String? oauth2LoginChallenge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2LoginRequest? oauth2LoginRequest;

  /// Refresh stores whether this login flow should enforce re-authentication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refresh;

  /// RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL's path or query for example.
  String requestUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuthenticatorAssuranceLevel? requestedAal;

  /// ReturnTo contains the requested return_to URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnTo;

  /// The flow type can either be `api` or `browser`.
  String type;

  UiContainer ui;

  /// UpdatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginFlow &&
     other.active == active &&
     other.createdAt == createdAt &&
     other.expiresAt == expiresAt &&
     other.id == id &&
     other.issuedAt == issuedAt &&
     other.oauth2LoginChallenge == oauth2LoginChallenge &&
     other.oauth2LoginRequest == oauth2LoginRequest &&
     other.refresh == refresh &&
     other.requestUrl == requestUrl &&
     other.requestedAal == requestedAal &&
     other.returnTo == returnTo &&
     other.type == type &&
     other.ui == ui &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (expiresAt.hashCode) +
    (id.hashCode) +
    (issuedAt.hashCode) +
    (oauth2LoginChallenge == null ? 0 : oauth2LoginChallenge!.hashCode) +
    (oauth2LoginRequest == null ? 0 : oauth2LoginRequest!.hashCode) +
    (refresh == null ? 0 : refresh!.hashCode) +
    (requestUrl.hashCode) +
    (requestedAal == null ? 0 : requestedAal!.hashCode) +
    (returnTo == null ? 0 : returnTo!.hashCode) +
    (type.hashCode) +
    (ui.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'LoginFlow[active=$active, createdAt=$createdAt, expiresAt=$expiresAt, id=$id, issuedAt=$issuedAt, oauth2LoginChallenge=$oauth2LoginChallenge, oauth2LoginRequest=$oauth2LoginRequest, refresh=$refresh, requestUrl=$requestUrl, requestedAal=$requestedAal, returnTo=$returnTo, type=$type, ui=$ui, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'issued_at'] = this.issuedAt.toUtc().toIso8601String();
    if (this.oauth2LoginChallenge != null) {
      json[r'oauth2_login_challenge'] = this.oauth2LoginChallenge;
    } else {
      json[r'oauth2_login_challenge'] = null;
    }
    if (this.oauth2LoginRequest != null) {
      json[r'oauth2_login_request'] = this.oauth2LoginRequest;
    } else {
      json[r'oauth2_login_request'] = null;
    }
    if (this.refresh != null) {
      json[r'refresh'] = this.refresh;
    } else {
      json[r'refresh'] = null;
    }
      json[r'request_url'] = this.requestUrl;
    if (this.requestedAal != null) {
      json[r'requested_aal'] = this.requestedAal;
    } else {
      json[r'requested_aal'] = null;
    }
    if (this.returnTo != null) {
      json[r'return_to'] = this.returnTo;
    } else {
      json[r'return_to'] = null;
    }
      json[r'type'] = this.type;
      json[r'ui'] = this.ui;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [LoginFlow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginFlow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginFlow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginFlow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginFlow(
        active: IdentityCredentialsType.fromJson(json[r'active']),
        createdAt: mapDateTime(json, r'created_at', ''),
        expiresAt: mapDateTime(json, r'expires_at', '')!,
        id: mapValueOfType<String>(json, r'id')!,
        issuedAt: mapDateTime(json, r'issued_at', '')!,
        oauth2LoginChallenge: mapValueOfType<String>(json, r'oauth2_login_challenge'),
        oauth2LoginRequest: OAuth2LoginRequest.fromJson(json[r'oauth2_login_request']),
        refresh: mapValueOfType<bool>(json, r'refresh'),
        requestUrl: mapValueOfType<String>(json, r'request_url')!,
        requestedAal: AuthenticatorAssuranceLevel.fromJson(json[r'requested_aal']),
        returnTo: mapValueOfType<String>(json, r'return_to'),
        type: mapValueOfType<String>(json, r'type')!,
        ui: UiContainer.fromJson(json[r'ui'])!,
        updatedAt: mapDateTime(json, r'updated_at', ''),
      );
    }
    return null;
  }

  static List<LoginFlow>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginFlow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginFlow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginFlow> mapFromJson(dynamic json) {
    final map = <String, LoginFlow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginFlow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginFlow-objects as value to a dart map
  static Map<String, List<LoginFlow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginFlow>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginFlow.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'expires_at',
    'id',
    'issued_at',
    'request_url',
    'type',
    'ui',
  };
}

