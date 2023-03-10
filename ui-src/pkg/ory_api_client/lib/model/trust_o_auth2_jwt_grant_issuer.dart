//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class TrustOAuth2JwtGrantIssuer {
  /// Returns a new [TrustOAuth2JwtGrantIssuer] instance.
  TrustOAuth2JwtGrantIssuer({
    this.allowAnySubject,
    required this.expiresAt,
    required this.issuer,
    required this.jwk,
    this.scope = const [],
    this.subject,
  });

  /// The \"allow_any_subject\" indicates that the issuer is allowed to have any principal as the subject of the JWT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowAnySubject;

  /// The \"expires_at\" indicates, when grant will expire, so we will reject assertion from \"issuer\" targeting \"subject\".
  DateTime expiresAt;

  /// The \"issuer\" identifies the principal that issued the JWT assertion (same as \"iss\" claim in JWT).
  String issuer;

  JsonWebKey jwk;

  /// The \"scope\" contains list of scope values (as described in Section 3.3 of OAuth 2.0 [RFC6749])
  List<String> scope;

  /// The \"subject\" identifies the principal that is the subject of the JWT.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustOAuth2JwtGrantIssuer &&
     other.allowAnySubject == allowAnySubject &&
     other.expiresAt == expiresAt &&
     other.issuer == issuer &&
     other.jwk == jwk &&
     other.scope == scope &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowAnySubject == null ? 0 : allowAnySubject!.hashCode) +
    (expiresAt.hashCode) +
    (issuer.hashCode) +
    (jwk.hashCode) +
    (scope.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'TrustOAuth2JwtGrantIssuer[allowAnySubject=$allowAnySubject, expiresAt=$expiresAt, issuer=$issuer, jwk=$jwk, scope=$scope, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allowAnySubject != null) {
      json[r'allow_any_subject'] = this.allowAnySubject;
    } else {
      json[r'allow_any_subject'] = null;
    }
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
      json[r'issuer'] = this.issuer;
      json[r'jwk'] = this.jwk;
      json[r'scope'] = this.scope;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [TrustOAuth2JwtGrantIssuer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustOAuth2JwtGrantIssuer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustOAuth2JwtGrantIssuer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustOAuth2JwtGrantIssuer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustOAuth2JwtGrantIssuer(
        allowAnySubject: mapValueOfType<bool>(json, r'allow_any_subject'),
        expiresAt: mapDateTime(json, r'expires_at', '')!,
        issuer: mapValueOfType<String>(json, r'issuer')!,
        jwk: JsonWebKey.fromJson(json[r'jwk'])!,
        scope: json[r'scope'] is List
            ? (json[r'scope'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<TrustOAuth2JwtGrantIssuer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustOAuth2JwtGrantIssuer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustOAuth2JwtGrantIssuer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustOAuth2JwtGrantIssuer> mapFromJson(dynamic json) {
    final map = <String, TrustOAuth2JwtGrantIssuer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustOAuth2JwtGrantIssuer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustOAuth2JwtGrantIssuer-objects as value to a dart map
  static Map<String, List<TrustOAuth2JwtGrantIssuer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustOAuth2JwtGrantIssuer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustOAuth2JwtGrantIssuer.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'expires_at',
    'issuer',
    'jwk',
    'scope',
  };
}

