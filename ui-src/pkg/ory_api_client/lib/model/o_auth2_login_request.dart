//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class OAuth2LoginRequest {
  /// Returns a new [OAuth2LoginRequest] instance.
  OAuth2LoginRequest({
    required this.challenge,
    required this.client,
    this.oidcContext,
    required this.requestUrl,
    this.requestedAccessTokenAudience = const [],
    this.requestedScope = const [],
    this.sessionId,
    required this.skip,
    required this.subject,
  });

  /// ID is the identifier (\"login challenge\") of the login request. It is used to identify the session.
  String challenge;

  OAuth2Client client;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2ConsentRequestOpenIDConnectContext? oidcContext;

  /// RequestURL is the original OAuth 2.0 Authorization URL requested by the OAuth 2.0 client. It is the URL which initiates the OAuth 2.0 Authorization Code or OAuth 2.0 Implicit flow. This URL is typically not needed, but might come in handy if you want to deal with additional request parameters.
  String requestUrl;

  List<String> requestedAccessTokenAudience;

  List<String> requestedScope;

  /// SessionID is the login session ID. If the user-agent reuses a login session (via cookie / remember flag) this ID will remain the same. If the user-agent did not have an existing authentication session (e.g. remember is false) this will be a new random value. This value is used as the \"sid\" parameter in the ID Token and in OIDC Front-/Back- channel logout. It's value can generally be used to associate consecutive login requests by a certain user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// Skip, if true, implies that the client has requested the same scopes from the same user previously. If true, you can skip asking the user to grant the requested scopes, and simply forward the user to the redirect URL.  This feature allows you to update / set session information.
  bool skip;

  /// Subject is the user ID of the end-user that authenticated. Now, that end user needs to grant or deny the scope requested by the OAuth 2.0 client. If this value is set and `skip` is true, you MUST include this subject type when accepting the login request, or the request will fail.
  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuth2LoginRequest &&
     other.challenge == challenge &&
     other.client == client &&
     other.oidcContext == oidcContext &&
     other.requestUrl == requestUrl &&
     other.requestedAccessTokenAudience == requestedAccessTokenAudience &&
     other.requestedScope == requestedScope &&
     other.sessionId == sessionId &&
     other.skip == skip &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (challenge.hashCode) +
    (client.hashCode) +
    (oidcContext == null ? 0 : oidcContext!.hashCode) +
    (requestUrl.hashCode) +
    (requestedAccessTokenAudience.hashCode) +
    (requestedScope.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (skip.hashCode) +
    (subject.hashCode);

  @override
  String toString() => 'OAuth2LoginRequest[challenge=$challenge, client=$client, oidcContext=$oidcContext, requestUrl=$requestUrl, requestedAccessTokenAudience=$requestedAccessTokenAudience, requestedScope=$requestedScope, sessionId=$sessionId, skip=$skip, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'challenge'] = this.challenge;
      json[r'client'] = this.client;
    if (this.oidcContext != null) {
      json[r'oidc_context'] = this.oidcContext;
    } else {
      json[r'oidc_context'] = null;
    }
      json[r'request_url'] = this.requestUrl;
      json[r'requested_access_token_audience'] = this.requestedAccessTokenAudience;
      json[r'requested_scope'] = this.requestedScope;
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
      json[r'skip'] = this.skip;
      json[r'subject'] = this.subject;
    return json;
  }

  /// Returns a new [OAuth2LoginRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuth2LoginRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuth2LoginRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuth2LoginRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuth2LoginRequest(
        challenge: mapValueOfType<String>(json, r'challenge')!,
        client: OAuth2Client.fromJson(json[r'client'])!,
        oidcContext: OAuth2ConsentRequestOpenIDConnectContext.fromJson(json[r'oidc_context']),
        requestUrl: mapValueOfType<String>(json, r'request_url')!,
        requestedAccessTokenAudience: json[r'requested_access_token_audience'] is List
            ? (json[r'requested_access_token_audience'] as List).cast<String>()
            : const [],
        requestedScope: json[r'requested_scope'] is List
            ? (json[r'requested_scope'] as List).cast<String>()
            : const [],
        sessionId: mapValueOfType<String>(json, r'session_id'),
        skip: mapValueOfType<bool>(json, r'skip')!,
        subject: mapValueOfType<String>(json, r'subject')!,
      );
    }
    return null;
  }

  static List<OAuth2LoginRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuth2LoginRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuth2LoginRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuth2LoginRequest> mapFromJson(dynamic json) {
    final map = <String, OAuth2LoginRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2LoginRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuth2LoginRequest-objects as value to a dart map
  static Map<String, List<OAuth2LoginRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuth2LoginRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2LoginRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'challenge',
    'client',
    'request_url',
    'requested_access_token_audience',
    'requested_scope',
    'skip',
    'subject',
  };
}

