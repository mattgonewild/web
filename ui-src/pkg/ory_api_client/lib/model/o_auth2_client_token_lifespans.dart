//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class OAuth2ClientTokenLifespans {
  /// Returns a new [OAuth2ClientTokenLifespans] instance.
  OAuth2ClientTokenLifespans({
    this.authorizationCodeGrantAccessTokenLifespan,
    this.authorizationCodeGrantIdTokenLifespan,
    this.authorizationCodeGrantRefreshTokenLifespan,
    this.clientCredentialsGrantAccessTokenLifespan,
    this.implicitGrantAccessTokenLifespan,
    this.implicitGrantIdTokenLifespan,
    this.jwtBearerGrantAccessTokenLifespan,
    this.refreshTokenGrantAccessTokenLifespan,
    this.refreshTokenGrantIdTokenLifespan,
    this.refreshTokenGrantRefreshTokenLifespan,
  });

  String? authorizationCodeGrantAccessTokenLifespan;

  String? authorizationCodeGrantIdTokenLifespan;

  String? authorizationCodeGrantRefreshTokenLifespan;

  String? clientCredentialsGrantAccessTokenLifespan;

  String? implicitGrantAccessTokenLifespan;

  String? implicitGrantIdTokenLifespan;

  String? jwtBearerGrantAccessTokenLifespan;

  String? refreshTokenGrantAccessTokenLifespan;

  String? refreshTokenGrantIdTokenLifespan;

  String? refreshTokenGrantRefreshTokenLifespan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuth2ClientTokenLifespans &&
     other.authorizationCodeGrantAccessTokenLifespan == authorizationCodeGrantAccessTokenLifespan &&
     other.authorizationCodeGrantIdTokenLifespan == authorizationCodeGrantIdTokenLifespan &&
     other.authorizationCodeGrantRefreshTokenLifespan == authorizationCodeGrantRefreshTokenLifespan &&
     other.clientCredentialsGrantAccessTokenLifespan == clientCredentialsGrantAccessTokenLifespan &&
     other.implicitGrantAccessTokenLifespan == implicitGrantAccessTokenLifespan &&
     other.implicitGrantIdTokenLifespan == implicitGrantIdTokenLifespan &&
     other.jwtBearerGrantAccessTokenLifespan == jwtBearerGrantAccessTokenLifespan &&
     other.refreshTokenGrantAccessTokenLifespan == refreshTokenGrantAccessTokenLifespan &&
     other.refreshTokenGrantIdTokenLifespan == refreshTokenGrantIdTokenLifespan &&
     other.refreshTokenGrantRefreshTokenLifespan == refreshTokenGrantRefreshTokenLifespan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authorizationCodeGrantAccessTokenLifespan == null ? 0 : authorizationCodeGrantAccessTokenLifespan!.hashCode) +
    (authorizationCodeGrantIdTokenLifespan == null ? 0 : authorizationCodeGrantIdTokenLifespan!.hashCode) +
    (authorizationCodeGrantRefreshTokenLifespan == null ? 0 : authorizationCodeGrantRefreshTokenLifespan!.hashCode) +
    (clientCredentialsGrantAccessTokenLifespan == null ? 0 : clientCredentialsGrantAccessTokenLifespan!.hashCode) +
    (implicitGrantAccessTokenLifespan == null ? 0 : implicitGrantAccessTokenLifespan!.hashCode) +
    (implicitGrantIdTokenLifespan == null ? 0 : implicitGrantIdTokenLifespan!.hashCode) +
    (jwtBearerGrantAccessTokenLifespan == null ? 0 : jwtBearerGrantAccessTokenLifespan!.hashCode) +
    (refreshTokenGrantAccessTokenLifespan == null ? 0 : refreshTokenGrantAccessTokenLifespan!.hashCode) +
    (refreshTokenGrantIdTokenLifespan == null ? 0 : refreshTokenGrantIdTokenLifespan!.hashCode) +
    (refreshTokenGrantRefreshTokenLifespan == null ? 0 : refreshTokenGrantRefreshTokenLifespan!.hashCode);

  @override
  String toString() => 'OAuth2ClientTokenLifespans[authorizationCodeGrantAccessTokenLifespan=$authorizationCodeGrantAccessTokenLifespan, authorizationCodeGrantIdTokenLifespan=$authorizationCodeGrantIdTokenLifespan, authorizationCodeGrantRefreshTokenLifespan=$authorizationCodeGrantRefreshTokenLifespan, clientCredentialsGrantAccessTokenLifespan=$clientCredentialsGrantAccessTokenLifespan, implicitGrantAccessTokenLifespan=$implicitGrantAccessTokenLifespan, implicitGrantIdTokenLifespan=$implicitGrantIdTokenLifespan, jwtBearerGrantAccessTokenLifespan=$jwtBearerGrantAccessTokenLifespan, refreshTokenGrantAccessTokenLifespan=$refreshTokenGrantAccessTokenLifespan, refreshTokenGrantIdTokenLifespan=$refreshTokenGrantIdTokenLifespan, refreshTokenGrantRefreshTokenLifespan=$refreshTokenGrantRefreshTokenLifespan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authorizationCodeGrantAccessTokenLifespan != null) {
      json[r'authorization_code_grant_access_token_lifespan'] = this.authorizationCodeGrantAccessTokenLifespan;
    } else {
      json[r'authorization_code_grant_access_token_lifespan'] = null;
    }
    if (this.authorizationCodeGrantIdTokenLifespan != null) {
      json[r'authorization_code_grant_id_token_lifespan'] = this.authorizationCodeGrantIdTokenLifespan;
    } else {
      json[r'authorization_code_grant_id_token_lifespan'] = null;
    }
    if (this.authorizationCodeGrantRefreshTokenLifespan != null) {
      json[r'authorization_code_grant_refresh_token_lifespan'] = this.authorizationCodeGrantRefreshTokenLifespan;
    } else {
      json[r'authorization_code_grant_refresh_token_lifespan'] = null;
    }
    if (this.clientCredentialsGrantAccessTokenLifespan != null) {
      json[r'client_credentials_grant_access_token_lifespan'] = this.clientCredentialsGrantAccessTokenLifespan;
    } else {
      json[r'client_credentials_grant_access_token_lifespan'] = null;
    }
    if (this.implicitGrantAccessTokenLifespan != null) {
      json[r'implicit_grant_access_token_lifespan'] = this.implicitGrantAccessTokenLifespan;
    } else {
      json[r'implicit_grant_access_token_lifespan'] = null;
    }
    if (this.implicitGrantIdTokenLifespan != null) {
      json[r'implicit_grant_id_token_lifespan'] = this.implicitGrantIdTokenLifespan;
    } else {
      json[r'implicit_grant_id_token_lifespan'] = null;
    }
    if (this.jwtBearerGrantAccessTokenLifespan != null) {
      json[r'jwt_bearer_grant_access_token_lifespan'] = this.jwtBearerGrantAccessTokenLifespan;
    } else {
      json[r'jwt_bearer_grant_access_token_lifespan'] = null;
    }
    if (this.refreshTokenGrantAccessTokenLifespan != null) {
      json[r'refresh_token_grant_access_token_lifespan'] = this.refreshTokenGrantAccessTokenLifespan;
    } else {
      json[r'refresh_token_grant_access_token_lifespan'] = null;
    }
    if (this.refreshTokenGrantIdTokenLifespan != null) {
      json[r'refresh_token_grant_id_token_lifespan'] = this.refreshTokenGrantIdTokenLifespan;
    } else {
      json[r'refresh_token_grant_id_token_lifespan'] = null;
    }
    if (this.refreshTokenGrantRefreshTokenLifespan != null) {
      json[r'refresh_token_grant_refresh_token_lifespan'] = this.refreshTokenGrantRefreshTokenLifespan;
    } else {
      json[r'refresh_token_grant_refresh_token_lifespan'] = null;
    }
    return json;
  }

  /// Returns a new [OAuth2ClientTokenLifespans] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuth2ClientTokenLifespans? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuth2ClientTokenLifespans[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuth2ClientTokenLifespans[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuth2ClientTokenLifespans(
        authorizationCodeGrantAccessTokenLifespan: mapValueOfType<String>(json, r'authorization_code_grant_access_token_lifespan'),
        authorizationCodeGrantIdTokenLifespan: mapValueOfType<String>(json, r'authorization_code_grant_id_token_lifespan'),
        authorizationCodeGrantRefreshTokenLifespan: mapValueOfType<String>(json, r'authorization_code_grant_refresh_token_lifespan'),
        clientCredentialsGrantAccessTokenLifespan: mapValueOfType<String>(json, r'client_credentials_grant_access_token_lifespan'),
        implicitGrantAccessTokenLifespan: mapValueOfType<String>(json, r'implicit_grant_access_token_lifespan'),
        implicitGrantIdTokenLifespan: mapValueOfType<String>(json, r'implicit_grant_id_token_lifespan'),
        jwtBearerGrantAccessTokenLifespan: mapValueOfType<String>(json, r'jwt_bearer_grant_access_token_lifespan'),
        refreshTokenGrantAccessTokenLifespan: mapValueOfType<String>(json, r'refresh_token_grant_access_token_lifespan'),
        refreshTokenGrantIdTokenLifespan: mapValueOfType<String>(json, r'refresh_token_grant_id_token_lifespan'),
        refreshTokenGrantRefreshTokenLifespan: mapValueOfType<String>(json, r'refresh_token_grant_refresh_token_lifespan'),
      );
    }
    return null;
  }

  static List<OAuth2ClientTokenLifespans>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuth2ClientTokenLifespans>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuth2ClientTokenLifespans.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuth2ClientTokenLifespans> mapFromJson(dynamic json) {
    final map = <String, OAuth2ClientTokenLifespans>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ClientTokenLifespans.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuth2ClientTokenLifespans-objects as value to a dart map
  static Map<String, List<OAuth2ClientTokenLifespans>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuth2ClientTokenLifespans>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2ClientTokenLifespans.listFromJson(entry.value, growable: growable,);
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

