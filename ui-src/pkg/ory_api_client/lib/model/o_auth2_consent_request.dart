//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class OAuth2ConsentRequest {
  /// Returns a new [OAuth2ConsentRequest] instance.
  OAuth2ConsentRequest({
    this.acr,
    this.amr = const [],
    required this.challenge,
    this.client,
    this.context,
    this.loginChallenge,
    this.loginSessionId,
    this.oidcContext,
    this.requestUrl,
    this.requestedAccessTokenAudience = const [],
    this.requestedScope = const [],
    this.skip,
    this.subject,
  });

  /// ACR represents the Authentication AuthorizationContext Class Reference value for this authentication session. You can use it to express that, for example, a user authenticated using two factor authentication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acr;

  List<String> amr;

  /// ID is the identifier (\"authorization challenge\") of the consent authorization request. It is used to identify the session.
  String challenge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2Client? client;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? context;

  /// LoginChallenge is the login challenge this consent challenge belongs to. It can be used to associate a login and consent request in the login & consent app.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginChallenge;

  /// LoginSessionID is the login session ID. If the user-agent reuses a login session (via cookie / remember flag) this ID will remain the same. If the user-agent did not have an existing authentication session (e.g. remember is false) this will be a new random value. This value is used as the \"sid\" parameter in the ID Token and in OIDC Front-/Back- channel logout. It's value can generally be used to associate consecutive login requests by a certain user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loginSessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OAuth2ConsentRequestOpenIDConnectContext? oidcContext;

  /// RequestURL is the original OAuth 2.0 Authorization URL requested by the OAuth 2.0 client. It is the URL which initiates the OAuth 2.0 Authorization Code or OAuth 2.0 Implicit flow. This URL is typically not needed, but might come in handy if you want to deal with additional request parameters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestUrl;

  List<String> requestedAccessTokenAudience;

  List<String> requestedScope;

  /// Skip, if true, implies that the client has requested the same scopes from the same user previously. If true, you must not ask the user to grant the requested scopes. You must however either allow or deny the consent request using the usual API call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? skip;

  /// Subject is the user ID of the end-user that authenticated. Now, that end user needs to grant or deny the scope requested by the OAuth 2.0 client.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuth2ConsentRequest &&
     other.acr == acr &&
     other.amr == amr &&
     other.challenge == challenge &&
     other.client == client &&
     other.context == context &&
     other.loginChallenge == loginChallenge &&
     other.loginSessionId == loginSessionId &&
     other.oidcContext == oidcContext &&
     other.requestUrl == requestUrl &&
     other.requestedAccessTokenAudience == requestedAccessTokenAudience &&
     other.requestedScope == requestedScope &&
     other.skip == skip &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (acr == null ? 0 : acr!.hashCode) +
    (amr.hashCode) +
    (challenge.hashCode) +
    (client == null ? 0 : client!.hashCode) +
    (context == null ? 0 : context!.hashCode) +
    (loginChallenge == null ? 0 : loginChallenge!.hashCode) +
    (loginSessionId == null ? 0 : loginSessionId!.hashCode) +
    (oidcContext == null ? 0 : oidcContext!.hashCode) +
    (requestUrl == null ? 0 : requestUrl!.hashCode) +
    (requestedAccessTokenAudience.hashCode) +
    (requestedScope.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'OAuth2ConsentRequest[acr=$acr, amr=$amr, challenge=$challenge, client=$client, context=$context, loginChallenge=$loginChallenge, loginSessionId=$loginSessionId, oidcContext=$oidcContext, requestUrl=$requestUrl, requestedAccessTokenAudience=$requestedAccessTokenAudience, requestedScope=$requestedScope, skip=$skip, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.acr != null) {
      json[r'acr'] = this.acr;
    } else {
      json[r'acr'] = null;
    }
      json[r'amr'] = this.amr;
      json[r'challenge'] = this.challenge;
    if (this.client != null) {
      json[r'client'] = this.client;
    } else {
      json[r'client'] = null;
    }
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.loginChallenge != null) {
      json[r'login_challenge'] = this.loginChallenge;
    } else {
      json[r'login_challenge'] = null;
    }
    if (this.loginSessionId != null) {
      json[r'login_session_id'] = this.loginSessionId;
    } else {
      json[r'login_session_id'] = null;
    }
    if (this.oidcContext != null) {
      json[r'oidc_context'] = this.oidcContext;
    } else {
      json[r'oidc_context'] = null;
    }
    if (this.requestUrl != null) {
      json[r'request_url'] = this.requestUrl;
    } else {
      json[r'request_url'] = null;
    }
      json[r'requested_access_token_audience'] = this.requestedAccessTokenAudience;
      json[r'requested_scope'] = this.requestedScope;
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [OAuth2ConsentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuth2ConsentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuth2ConsentRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuth2ConsentRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuth2ConsentRequest(
        acr: mapValueOfType<String>(json, r'acr'),
        amr: json[r'amr'] is List
            ? (json[r'amr'] as List).cast<String>()
            : const [],
        challenge: mapValueOfType<String>(json, r'challenge')!,
        client: OAuth2Client.fromJson(json[r'client']),
        context: mapValueOfType<Object>(json, r'context'),
        loginChallenge: mapValueOfType<String>(json, r'login_challenge'),
        loginSessionId: mapValueOfType<String>(json, r'login_session_id'),
        oidcContext: OAuth2ConsentRequestOpenIDConnectContext.fromJson(json[r'oidc_context']),
        requestUrl: mapValueOfType<String>(json, r'request_url'),
        requestedAccessTokenAudience: json[r'requested_access_token_audience'] is List
            ? (json[r'requested_access_token_audience'] as List).cast<String>()
            : const [],
        requestedScope: json[r'requested_scope'] is List
            ? (json[r'requested_scope'] as List).cast<String>()
            : const [],
        skip: mapValueOfType<bool>(json, r'skip'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<OAuth2ConsentRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuth2ConsentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuth2ConsentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuth2ConsentRequest> mapFromJson(dynamic json) {
    final map = <String, OAuth2ConsentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ConsentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuth2ConsentRequest-objects as value to a dart map
  static Map<String, List<OAuth2ConsentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuth2ConsentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ConsentRequest.listFromJson(entry.value, growable: growable,);
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
  };
}

