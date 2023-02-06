//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class Identity {
  /// Returns a new [Identity] instance.
  Identity({
    this.createdAt,
    this.credentials = const {},
    required this.id,
    this.metadataAdmin,
    this.metadataPublic,
    this.recoveryAddresses = const [],
    required this.schemaId,
    required this.schemaUrl,
    this.state,
    this.stateChangedAt,
    required this.traits,
    this.updatedAt,
    this.verifiableAddresses = const [],
  });

  /// CreatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Credentials represents all credentials that can be used for authenticating this identity.
  Map<String, IdentityCredentials> credentials;

  /// ID is the identity's unique identifier.  The Identity ID can not be changed and can not be chosen. This ensures future compatibility and optimization for distributed stores such as CockroachDB.
  String id;

  /// NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
  Object? metadataAdmin;

  /// NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
  Object? metadataPublic;

  /// RecoveryAddresses contains all the addresses that can be used to recover an identity.
  List<RecoveryIdentityAddress> recoveryAddresses;

  /// SchemaID is the ID of the JSON Schema to be used for validating the identity's traits.
  String schemaId;

  /// SchemaURL is the URL of the endpoint where the identity's traits schema can be fetched from.  format: url
  String schemaUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityState? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? stateChangedAt;

  /// Traits represent an identity's traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in `schema_url`.
  Object? traits;

  /// UpdatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// VerifiableAddresses contains all the addresses that can be verified by the user.
  List<VerifiableIdentityAddress> verifiableAddresses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Identity &&
          other.createdAt == createdAt &&
          other.credentials == credentials &&
          other.id == id &&
          other.metadataAdmin == metadataAdmin &&
          other.metadataPublic == metadataPublic &&
          other.recoveryAddresses == recoveryAddresses &&
          other.schemaId == schemaId &&
          other.schemaUrl == schemaUrl &&
          other.state == state &&
          other.stateChangedAt == stateChangedAt &&
          other.traits == traits &&
          other.updatedAt == updatedAt &&
          other.verifiableAddresses == verifiableAddresses;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (credentials.hashCode) +
      (id.hashCode) +
      (metadataAdmin == null ? 0 : metadataAdmin!.hashCode) +
      (metadataPublic == null ? 0 : metadataPublic!.hashCode) +
      (recoveryAddresses.hashCode) +
      (schemaId.hashCode) +
      (schemaUrl.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (stateChangedAt == null ? 0 : stateChangedAt!.hashCode) +
      (traits == null ? 0 : traits!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (verifiableAddresses.hashCode);

  @override
  String toString() =>
      'Identity[createdAt=$createdAt, credentials=$credentials, id=$id, metadataAdmin=$metadataAdmin, metadataPublic=$metadataPublic, recoveryAddresses=$recoveryAddresses, schemaId=$schemaId, schemaUrl=$schemaUrl, state=$state, stateChangedAt=$stateChangedAt, traits=$traits, updatedAt=$updatedAt, verifiableAddresses=$verifiableAddresses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    json[r'credentials'] = this.credentials;
    json[r'id'] = this.id;
    if (this.metadataAdmin != null) {
      json[r'metadata_admin'] = this.metadataAdmin;
    } else {
      json[r'metadata_admin'] = null;
    }
    if (this.metadataPublic != null) {
      json[r'metadata_public'] = this.metadataPublic;
    } else {
      json[r'metadata_public'] = null;
    }
    json[r'recovery_addresses'] = this.recoveryAddresses;
    json[r'schema_id'] = this.schemaId;
    json[r'schema_url'] = this.schemaUrl;
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.stateChangedAt != null) {
      json[r'state_changed_at'] =
          this.stateChangedAt!.toUtc().toIso8601String();
    } else {
      json[r'state_changed_at'] = null;
    }
    if (this.traits != null) {
      json[r'traits'] = this.traits;
    } else {
      json[r'traits'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    json[r'verifiable_addresses'] = this.verifiableAddresses;
    return json;
  }

  /// Returns a new [Identity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Identity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Identity[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Identity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Identity(
        createdAt: mapDateTime(json, r'created_at', ''),
        credentials: IdentityCredentials.mapFromJson(json[r'credentials']),
        id: mapValueOfType<String>(json, r'id')!,
        metadataAdmin: mapValueOfType<Object>(json, r'metadata_admin'),
        metadataPublic: mapValueOfType<Object>(json, r'metadata_public'),
        recoveryAddresses:
            RecoveryIdentityAddress.listFromJson(json[r'recovery_addresses']) ??
                const [],
        schemaId: mapValueOfType<String>(json, r'schema_id')!,
        schemaUrl: mapValueOfType<String>(json, r'schema_url')!,
        state: IdentityState.fromJson(json[r'state']),
        stateChangedAt: mapDateTime(json, r'state_changed_at', ''),
        traits: mapValueOfType<Object>(json, r'traits'),
        updatedAt: mapDateTime(json, r'updated_at', ''),
        verifiableAddresses: VerifiableIdentityAddress.listFromJson(
                json[r'verifiable_addresses']) ??
            const [],
      );
    }
    return null;
  }

  static List<Identity>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Identity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Identity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Identity> mapFromJson(dynamic json) {
    final map = <String, Identity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Identity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Identity-objects as value to a dart map
  static Map<String, List<Identity>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Identity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Identity.listFromJson(
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
    'schema_id',
    'schema_url',
    'traits',
  };
}
