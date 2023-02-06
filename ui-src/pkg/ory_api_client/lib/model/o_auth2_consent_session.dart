//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class OAuth2ConsentSession {
  /// Returns a new [OAuth2ConsentSession] instance.
  OAuth2ConsentSession({
    this.consentRequest,
    this.expiresAt,
    this.grantAccessTokenAudience = const [],
    this.grantScope = const [],
    this.handledAt,
    this.remember,
    this.rememberFor,
    this.session,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2ConsentRequest? consentRequest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2ConsentSessionExpiresAt? expiresAt;

  List<String> grantAccessTokenAudience;

  List<String> grantScope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? handledAt;

  /// Remember Consent  Remember, if set to true, tells ORY Hydra to remember this consent authorization and reuse it if the same client asks the same user for the same, or a subset of, scope.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? remember;

  /// Remember Consent For  RememberFor sets how long the consent authorization should be remembered for in seconds. If set to `0`, the authorization will be remembered indefinitely.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rememberFor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AcceptOAuth2ConsentRequestSession? session;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuth2ConsentSession &&
     other.consentRequest == consentRequest &&
     other.expiresAt == expiresAt &&
     other.grantAccessTokenAudience == grantAccessTokenAudience &&
     other.grantScope == grantScope &&
     other.handledAt == handledAt &&
     other.remember == remember &&
     other.rememberFor == rememberFor &&
     other.session == session;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consentRequest == null ? 0 : consentRequest!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (grantAccessTokenAudience.hashCode) +
    (grantScope.hashCode) +
    (handledAt == null ? 0 : handledAt!.hashCode) +
    (remember == null ? 0 : remember!.hashCode) +
    (rememberFor == null ? 0 : rememberFor!.hashCode) +
    (session == null ? 0 : session!.hashCode);

  @override
  String toString() => 'OAuth2ConsentSession[consentRequest=$consentRequest, expiresAt=$expiresAt, grantAccessTokenAudience=$grantAccessTokenAudience, grantScope=$grantScope, handledAt=$handledAt, remember=$remember, rememberFor=$rememberFor, session=$session]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.consentRequest != null) {
      json[r'consent_request'] = this.consentRequest;
    } else {
      json[r'consent_request'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt;
    } else {
      json[r'expires_at'] = null;
    }
      json[r'grant_access_token_audience'] = this.grantAccessTokenAudience;
      json[r'grant_scope'] = this.grantScope;
    if (this.handledAt != null) {
      json[r'handled_at'] = this.handledAt!.toUtc().toIso8601String();
    } else {
      json[r'handled_at'] = null;
    }
    if (this.remember != null) {
      json[r'remember'] = this.remember;
    } else {
      json[r'remember'] = null;
    }
    if (this.rememberFor != null) {
      json[r'remember_for'] = this.rememberFor;
    } else {
      json[r'remember_for'] = null;
    }
    if (this.session != null) {
      json[r'session'] = this.session;
    } else {
      json[r'session'] = null;
    }
    return json;
  }

  /// Returns a new [OAuth2ConsentSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuth2ConsentSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuth2ConsentSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuth2ConsentSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuth2ConsentSession(
        consentRequest: OAuth2ConsentRequest.fromJson(json[r'consent_request']),
        expiresAt: OAuth2ConsentSessionExpiresAt.fromJson(json[r'expires_at']),
        grantAccessTokenAudience: json[r'grant_access_token_audience'] is List
            ? (json[r'grant_access_token_audience'] as List).cast<String>()
            : const [],
        grantScope: json[r'grant_scope'] is List
            ? (json[r'grant_scope'] as List).cast<String>()
            : const [],
        handledAt: mapDateTime(json, r'handled_at', ''),
        remember: mapValueOfType<bool>(json, r'remember'),
        rememberFor: mapValueOfType<int>(json, r'remember_for'),
        session: AcceptOAuth2ConsentRequestSession.fromJson(json[r'session']),
      );
    }
    return null;
  }

  static List<OAuth2ConsentSession>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuth2ConsentSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuth2ConsentSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuth2ConsentSession> mapFromJson(dynamic json) {
    final map = <String, OAuth2ConsentSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ConsentSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuth2ConsentSession-objects as value to a dart map
  static Map<String, List<OAuth2ConsentSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuth2ConsentSession>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ConsentSession.listFromJson(entry.value, growable: growable,);
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

