//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateIdentityBody {
  /// Returns a new [UpdateIdentityBody] instance.
  UpdateIdentityBody({
    this.credentials,
    this.metadataAdmin,
    this.metadataPublic,
    required this.schemaId,
    required this.state,
    required this.traits,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityWithCredentials? credentials;

  /// Store metadata about the user which is only accessible through admin APIs such as `GET /admin/identities/<id>`.
  Object? metadataAdmin;

  /// Store metadata about the identity which the identity itself can see when calling for example the session endpoint. Do not store sensitive information (e.g. credit score) about the identity in this field.
  Object? metadataPublic;

  /// SchemaID is the ID of the JSON Schema to be used for validating the identity's traits. If set will update the Identity's SchemaID.
  String schemaId;

  IdentityState state;

  /// Traits represent an identity's traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in `schema_id`.
  Object traits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateIdentityBody &&
     other.credentials == credentials &&
     other.metadataAdmin == metadataAdmin &&
     other.metadataPublic == metadataPublic &&
     other.schemaId == schemaId &&
     other.state == state &&
     other.traits == traits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentials == null ? 0 : credentials!.hashCode) +
    (metadataAdmin == null ? 0 : metadataAdmin!.hashCode) +
    (metadataPublic == null ? 0 : metadataPublic!.hashCode) +
    (schemaId.hashCode) +
    (state.hashCode) +
    (traits.hashCode);

  @override
  String toString() => 'UpdateIdentityBody[credentials=$credentials, metadataAdmin=$metadataAdmin, metadataPublic=$metadataPublic, schemaId=$schemaId, state=$state, traits=$traits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentials != null) {
      json[r'credentials'] = this.credentials;
    } else {
      json[r'credentials'] = null;
    }
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
      json[r'schema_id'] = this.schemaId;
      json[r'state'] = this.state;
      json[r'traits'] = this.traits;
    return json;
  }

  /// Returns a new [UpdateIdentityBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateIdentityBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateIdentityBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateIdentityBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateIdentityBody(
        credentials: IdentityWithCredentials.fromJson(json[r'credentials']),
        metadataAdmin: mapValueOfType<Object>(json, r'metadata_admin'),
        metadataPublic: mapValueOfType<Object>(json, r'metadata_public'),
        schemaId: mapValueOfType<String>(json, r'schema_id')!,
        state: IdentityState.fromJson(json[r'state'])!,
        traits: mapValueOfType<Object>(json, r'traits')!,
      );
    }
    return null;
  }

  static List<UpdateIdentityBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateIdentityBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateIdentityBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateIdentityBody> mapFromJson(dynamic json) {
    final map = <String, UpdateIdentityBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateIdentityBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateIdentityBody-objects as value to a dart map
  static Map<String, List<UpdateIdentityBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateIdentityBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateIdentityBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schema_id',
    'state',
    'traits',
  };
}

