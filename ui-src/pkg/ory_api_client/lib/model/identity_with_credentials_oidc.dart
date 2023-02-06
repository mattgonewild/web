//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class IdentityWithCredentialsOidc {
  /// Returns a new [IdentityWithCredentialsOidc] instance.
  IdentityWithCredentialsOidc({
    this.config,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityWithCredentialsOidcConfig? config;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityWithCredentialsOidc &&
     other.config == config;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode);

  @override
  String toString() => 'IdentityWithCredentialsOidc[config=$config]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    return json;
  }

  /// Returns a new [IdentityWithCredentialsOidc] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityWithCredentialsOidc? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityWithCredentialsOidc[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityWithCredentialsOidc[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityWithCredentialsOidc(
        config: IdentityWithCredentialsOidcConfig.fromJson(json[r'config']),
      );
    }
    return null;
  }

  static List<IdentityWithCredentialsOidc>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityWithCredentialsOidc>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityWithCredentialsOidc.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityWithCredentialsOidc> mapFromJson(dynamic json) {
    final map = <String, IdentityWithCredentialsOidc>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidc.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityWithCredentialsOidc-objects as value to a dart map
  static Map<String, List<IdentityWithCredentialsOidc>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityWithCredentialsOidc>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidc.listFromJson(entry.value, growable: growable,);
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

