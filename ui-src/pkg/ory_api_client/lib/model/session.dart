//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class Session {
  /// Returns a new [Session] instance.
  Session({
    this.active,
    this.authenticatedAt,
    this.authenticationMethods = const [],
    this.authenticatorAssuranceLevel,
    this.devices = const [],
    this.expiresAt,
    required this.id,
    required this.identity,
    this.issuedAt,
  });

  /// Active state. If false the session is no longer active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// The Session Authentication Timestamp  When this session was authenticated at. If multi-factor authentication was used this is the time when the last factor was authenticated (e.g. the TOTP code challenge was completed).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? authenticatedAt;

  /// A list of authenticators which were used to authenticate the session.
  List<SessionAuthenticationMethod> authenticationMethods;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AuthenticatorAssuranceLevel? authenticatorAssuranceLevel;

  /// Devices has history of all endpoints where the session was used
  List<SessionDevice> devices;

  /// The Session Expiry  When this session expires at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  /// Session ID
  String id;

  Identity identity;

  /// The Session Issuance Timestamp  When this session was issued at. Usually equal or close to `authenticated_at`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? issuedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Session &&
          other.active == active &&
          other.authenticatedAt == authenticatedAt &&
          other.authenticationMethods == authenticationMethods &&
          other.authenticatorAssuranceLevel == authenticatorAssuranceLevel &&
          other.devices == devices &&
          other.expiresAt == expiresAt &&
          other.id == id &&
          other.identity == identity &&
          other.issuedAt == issuedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (active == null ? 0 : active!.hashCode) +
      (authenticatedAt == null ? 0 : authenticatedAt!.hashCode) +
      (authenticationMethods.hashCode) +
      (authenticatorAssuranceLevel == null
          ? 0
          : authenticatorAssuranceLevel!.hashCode) +
      (devices.hashCode) +
      (expiresAt == null ? 0 : expiresAt!.hashCode) +
      (id.hashCode) +
      (identity.hashCode) +
      (issuedAt == null ? 0 : issuedAt!.hashCode);

  @override
  String toString() =>
      'Session[active=$active, authenticatedAt=$authenticatedAt, authenticationMethods=$authenticationMethods, authenticatorAssuranceLevel=$authenticatorAssuranceLevel, devices=$devices, expiresAt=$expiresAt, id=$id, identity=$identity, issuedAt=$issuedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.authenticatedAt != null) {
      json[r'authenticated_at'] =
          this.authenticatedAt!.toUtc().toIso8601String();
    } else {
      json[r'authenticated_at'] = null;
    }
    json[r'authentication_methods'] = this.authenticationMethods;
    if (this.authenticatorAssuranceLevel != null) {
      json[r'authenticator_assurance_level'] = this.authenticatorAssuranceLevel;
    } else {
      json[r'authenticator_assurance_level'] = null;
    }
    json[r'devices'] = this.devices;
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    json[r'id'] = this.id;
    json[r'identity'] = this.identity;
    if (this.issuedAt != null) {
      json[r'issued_at'] = this.issuedAt!.toUtc().toIso8601String();
    } else {
      json[r'issued_at'] = null;
    }
    return json;
  }

  /// Returns a new [Session] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Session? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Session[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Session[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Session(
        active: mapValueOfType<bool>(json, r'active'),
        authenticatedAt: mapDateTime(json, r'authenticated_at', ''),
        authenticationMethods: SessionAuthenticationMethod.listFromJson(
                json[r'authentication_methods']) ??
            const [],
        authenticatorAssuranceLevel: AuthenticatorAssuranceLevel.fromJson(
            json[r'authenticator_assurance_level']),
        devices: SessionDevice.listFromJson(json[r'devices']) ?? const [],
        expiresAt: mapDateTime(json, r'expires_at', ''),
        id: mapValueOfType<String>(json, r'id')!,
        identity: Identity.fromJson(json[r'identity'])!,
        issuedAt: mapDateTime(json, r'issued_at', ''),
      );
    }
    return null;
  }

  static List<Session>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Session>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Session.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Session> mapFromJson(dynamic json) {
    final map = <String, Session>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Session.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Session-objects as value to a dart map
  static Map<String, List<Session>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Session>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Session.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'identity',
  };
}
