//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class CreateRecoveryLinkForIdentityBody {
  /// Returns a new [CreateRecoveryLinkForIdentityBody] instance.
  CreateRecoveryLinkForIdentityBody({
    this.expiresIn,
    required this.identityId,
  });

  /// Link Expires In  The recovery link will expire after that amount of time has passed. Defaults to the configuration value of `selfservice.methods.code.config.lifespan`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresIn;

  /// Identity to Recover  The identity's ID you wish to recover.
  String identityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRecoveryLinkForIdentityBody &&
     other.expiresIn == expiresIn &&
     other.identityId == identityId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (identityId.hashCode);

  @override
  String toString() => 'CreateRecoveryLinkForIdentityBody[expiresIn=$expiresIn, identityId=$identityId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresIn != null) {
      json[r'expires_in'] = this.expiresIn;
    } else {
      json[r'expires_in'] = null;
    }
      json[r'identity_id'] = this.identityId;
    return json;
  }

  /// Returns a new [CreateRecoveryLinkForIdentityBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRecoveryLinkForIdentityBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRecoveryLinkForIdentityBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRecoveryLinkForIdentityBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRecoveryLinkForIdentityBody(
        expiresIn: mapValueOfType<String>(json, r'expires_in'),
        identityId: mapValueOfType<String>(json, r'identity_id')!,
      );
    }
    return null;
  }

  static List<CreateRecoveryLinkForIdentityBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRecoveryLinkForIdentityBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRecoveryLinkForIdentityBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRecoveryLinkForIdentityBody> mapFromJson(dynamic json) {
    final map = <String, CreateRecoveryLinkForIdentityBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecoveryLinkForIdentityBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRecoveryLinkForIdentityBody-objects as value to a dart map
  static Map<String, List<CreateRecoveryLinkForIdentityBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRecoveryLinkForIdentityBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecoveryLinkForIdentityBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identity_id',
  };
}

