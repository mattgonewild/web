//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class RecoveryLinkForIdentity {
  /// Returns a new [RecoveryLinkForIdentity] instance.
  RecoveryLinkForIdentity({
    this.expiresAt,
    required this.recoveryLink,
  });

  /// Recovery Link Expires At  The timestamp when the recovery link expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  /// Recovery Link  This link can be used to recover the account.
  String recoveryLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecoveryLinkForIdentity &&
     other.expiresAt == expiresAt &&
     other.recoveryLink == recoveryLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (recoveryLink.hashCode);

  @override
  String toString() => 'RecoveryLinkForIdentity[expiresAt=$expiresAt, recoveryLink=$recoveryLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
      json[r'recovery_link'] = this.recoveryLink;
    return json;
  }

  /// Returns a new [RecoveryLinkForIdentity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecoveryLinkForIdentity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecoveryLinkForIdentity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecoveryLinkForIdentity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecoveryLinkForIdentity(
        expiresAt: mapDateTime(json, r'expires_at', ''),
        recoveryLink: mapValueOfType<String>(json, r'recovery_link')!,
      );
    }
    return null;
  }

  static List<RecoveryLinkForIdentity>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecoveryLinkForIdentity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecoveryLinkForIdentity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecoveryLinkForIdentity> mapFromJson(dynamic json) {
    final map = <String, RecoveryLinkForIdentity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecoveryLinkForIdentity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecoveryLinkForIdentity-objects as value to a dart map
  static Map<String, List<RecoveryLinkForIdentity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecoveryLinkForIdentity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecoveryLinkForIdentity.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recovery_link',
  };
}

