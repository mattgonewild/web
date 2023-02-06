//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class IdentityWithCredentialsOidcConfigProvider {
  /// Returns a new [IdentityWithCredentialsOidcConfigProvider] instance.
  IdentityWithCredentialsOidcConfigProvider({
    required this.provider,
    required this.subject,
  });

  /// The OpenID Connect provider to link the subject to. Usually something like `google` or `github`.
  String provider;

  /// The subject (`sub`) of the OpenID Connect connection. Usually the `sub` field of the ID Token.
  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IdentityWithCredentialsOidcConfigProvider &&
     other.provider == provider &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (subject.hashCode);

  @override
  String toString() => 'IdentityWithCredentialsOidcConfigProvider[provider=$provider, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'subject'] = this.subject;
    return json;
  }

  /// Returns a new [IdentityWithCredentialsOidcConfigProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdentityWithCredentialsOidcConfigProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IdentityWithCredentialsOidcConfigProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IdentityWithCredentialsOidcConfigProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdentityWithCredentialsOidcConfigProvider(
        provider: mapValueOfType<String>(json, r'provider')!,
        subject: mapValueOfType<String>(json, r'subject')!,
      );
    }
    return null;
  }

  static List<IdentityWithCredentialsOidcConfigProvider>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdentityWithCredentialsOidcConfigProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdentityWithCredentialsOidcConfigProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdentityWithCredentialsOidcConfigProvider> mapFromJson(dynamic json) {
    final map = <String, IdentityWithCredentialsOidcConfigProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidcConfigProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdentityWithCredentialsOidcConfigProvider-objects as value to a dart map
  static Map<String, List<IdentityWithCredentialsOidcConfigProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IdentityWithCredentialsOidcConfigProvider>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdentityWithCredentialsOidcConfigProvider.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'subject',
  };
}

