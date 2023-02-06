//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class SetCustomDomainBody {
  /// Returns a new [SetCustomDomainBody] instance.
  SetCustomDomainBody({
    this.cookieDomain,
    this.corsAllowedOrigins = const [],
    this.corsEnabled,
    this.hostname,
  });

  /// The domain where cookies will be set. Has to be a parent domain of the custom hostname to work.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cookieDomain;

  /// CORS Allowed origins for the custom hostname.
  List<String> corsAllowedOrigins;

  /// CORS Enabled for the custom hostname.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? corsEnabled;

  /// The custom hostname where the API will be exposed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetCustomDomainBody &&
     other.cookieDomain == cookieDomain &&
     other.corsAllowedOrigins == corsAllowedOrigins &&
     other.corsEnabled == corsEnabled &&
     other.hostname == hostname;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cookieDomain == null ? 0 : cookieDomain!.hashCode) +
    (corsAllowedOrigins.hashCode) +
    (corsEnabled == null ? 0 : corsEnabled!.hashCode) +
    (hostname == null ? 0 : hostname!.hashCode);

  @override
  String toString() => 'SetCustomDomainBody[cookieDomain=$cookieDomain, corsAllowedOrigins=$corsAllowedOrigins, corsEnabled=$corsEnabled, hostname=$hostname]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cookieDomain != null) {
      json[r'cookie_domain'] = this.cookieDomain;
    } else {
      json[r'cookie_domain'] = null;
    }
      json[r'cors_allowed_origins'] = this.corsAllowedOrigins;
    if (this.corsEnabled != null) {
      json[r'cors_enabled'] = this.corsEnabled;
    } else {
      json[r'cors_enabled'] = null;
    }
    if (this.hostname != null) {
      json[r'hostname'] = this.hostname;
    } else {
      json[r'hostname'] = null;
    }
    return json;
  }

  /// Returns a new [SetCustomDomainBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetCustomDomainBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetCustomDomainBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetCustomDomainBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetCustomDomainBody(
        cookieDomain: mapValueOfType<String>(json, r'cookie_domain'),
        corsAllowedOrigins: json[r'cors_allowed_origins'] is List
            ? (json[r'cors_allowed_origins'] as List).cast<String>()
            : const [],
        corsEnabled: mapValueOfType<bool>(json, r'cors_enabled'),
        hostname: mapValueOfType<String>(json, r'hostname'),
      );
    }
    return null;
  }

  static List<SetCustomDomainBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetCustomDomainBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetCustomDomainBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetCustomDomainBody> mapFromJson(dynamic json) {
    final map = <String, SetCustomDomainBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetCustomDomainBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetCustomDomainBody-objects as value to a dart map
  static Map<String, List<SetCustomDomainBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetCustomDomainBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetCustomDomainBody.listFromJson(entry.value, growable: growable,);
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

