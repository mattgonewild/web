//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class IdentityWithCredentialsOidcConfig {
  /// Returns a new [IdentityWithCredentialsOidcConfig] instance.
  IdentityWithCredentialsOidcConfig({
    this.config,
    this.providers = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IdentityWithCredentialsPasswordConfig? config;

  /// A list of OpenID Connect Providers
  List<IdentityWithCredentialsOidcConfigProvider> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityWithCredentialsOidcConfig &&
     other.config == config &&
     other.providers == providers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode) +
    (providers.hashCode);

  @override
  String toString() => 'IdentityWithCredentialsOidcConfig[config=$config, providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [IdentityWithCredentialsOidcConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityWithCredentialsOidcConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityWithCredentialsOidcConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityWithCredentialsOidcConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityWithCredentialsOidcConfig(
        config: IdentityWithCredentialsPasswordConfig.fromJson(json[r'config']),
        providers: IdentityWithCredentialsOidcConfigProvider.listFromJson(json[r'providers']) ?? const [],
      );
    }
    return null;
  }

  static List<IdentityWithCredentialsOidcConfig>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityWithCredentialsOidcConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityWithCredentialsOidcConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityWithCredentialsOidcConfig> mapFromJson(dynamic json) {
    final map = <String, IdentityWithCredentialsOidcConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidcConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityWithCredentialsOidcConfig-objects as value to a dart map
  static Map<String, List<IdentityWithCredentialsOidcConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityWithCredentialsOidcConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidcConfig.listFromJson(entry.value, growable: growable,);
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

