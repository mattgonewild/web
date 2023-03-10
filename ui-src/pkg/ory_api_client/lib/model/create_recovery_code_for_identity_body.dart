//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class CreateRecoveryCodeForIdentityBody {
  /// Returns a new [CreateRecoveryCodeForIdentityBody] instance.
  CreateRecoveryCodeForIdentityBody({
    this.expiresIn,
    required this.identityId,
  });

  /// Code Expires In  The recovery code will expire after that amount of time has passed. Defaults to the configuration value of `selfservice.methods.code.config.lifespan`.
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
  bool operator ==(Object other) => identical(this, other) || other is CreateRecoveryCodeForIdentityBody &&
     other.expiresIn == expiresIn &&
     other.identityId == identityId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (identityId.hashCode);

  @override
  String toString() => 'CreateRecoveryCodeForIdentityBody[expiresIn=$expiresIn, identityId=$identityId]';

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

  /// Returns a new [CreateRecoveryCodeForIdentityBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRecoveryCodeForIdentityBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRecoveryCodeForIdentityBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRecoveryCodeForIdentityBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRecoveryCodeForIdentityBody(
        expiresIn: mapValueOfType<String>(json, r'expires_in'),
        identityId: mapValueOfType<String>(json, r'identity_id')!,
      );
    }
    return null;
  }

  static List<CreateRecoveryCodeForIdentityBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRecoveryCodeForIdentityBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRecoveryCodeForIdentityBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRecoveryCodeForIdentityBody> mapFromJson(dynamic json) {
    final map = <String, CreateRecoveryCodeForIdentityBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecoveryCodeForIdentityBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRecoveryCodeForIdentityBody-objects as value to a dart map
  static Map<String, List<CreateRecoveryCodeForIdentityBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRecoveryCodeForIdentityBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecoveryCodeForIdentityBody.listFromJson(entry.value, growable: growable,);
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

