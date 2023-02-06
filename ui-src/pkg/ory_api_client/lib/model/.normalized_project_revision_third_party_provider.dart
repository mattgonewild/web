//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class NormalizedProjectRevisionThirdPartyProvider {
  /// Returns a new [NormalizedProjectRevisionThirdPartyProvider] instance.
  NormalizedProjectRevisionThirdPartyProvider({
    this.applePrivateKey,
    this.applePrivateKeyId,
    this.appleTeamId,
    this.authUrl,
    this.azureTenant,
    this.clientId,
    this.clientSecret,
    this.createdAt,
    this.id,
    this.issuerUrl,
    this.label,
    this.mapperUrl,
    this.projectRevisionId,
    this.provider,
    this.providerId,
    this.requestedClaims,
    this.scope = const [],
    this.subjectSource,
    this.tokenUrl,
    this.updatedAt,
  });

  String? applePrivateKey;

  /// Apple Private Key Identifier  Sign In with Apple Private Key Identifier needed for generating a JWT token for client secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applePrivateKeyId;

  /// Apple Developer Team ID  Apple Developer Team ID needed for generating a JWT token for client secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appleTeamId;

  /// AuthURL is the authorize url, typically something like: https://example.org/oauth2/auth Should only be used when the OAuth2 / OpenID Connect server is not supporting OpenID Connect Discovery and when `provider` is set to `generic`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authUrl;

  /// Tenant is the Azure AD Tenant to use for authentication, and must be set when `provider` is set to `microsoft`.  Can be either `common`, `organizations`, `consumers` for a multitenant application or a specific tenant like `8eaef023-2b34-4da1-9baa-8bc8c9d6a490` or `contoso.onmicrosoft.com`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? azureTenant;

  /// ClientID is the application's Client ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  String? clientSecret;

  /// The Project's Revision Creation Date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IssuerURL is the OpenID Connect Server URL. You can leave this empty if `provider` is not set to `generic`. If set, neither `auth_url` nor `token_url` are required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerUrl;

  /// Label represents an optional label which can be used in the UI generation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Mapper specifies the JSONNet code snippet which uses the OpenID Connect Provider's data (e.g. GitHub or Google profile information) to hydrate the identity's data.  It can be either a URL (file://, http(s)://, base64://) or an inline JSONNet code snippet.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mapperUrl;

  /// The Revision's ID this schema belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectRevisionId;

  /// Provider is either \"generic\" for a generic OAuth 2.0 / OpenID Connect Provider or one of: generic google github gitlab microsoft discord slack facebook vk yandex apple
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// ID is the provider's ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? requestedClaims;

  List<String> scope;

  String? subjectSource;

  /// TokenURL is the token url, typically something like: https://example.org/oauth2/token  Should only be used when the OAuth2 / OpenID Connect server is not supporting OpenID Connect Discovery and when `provider` is set to `generic`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenUrl;

  /// Last Time Project's Revision was Updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NormalizedProjectRevisionThirdPartyProvider &&
     other.applePrivateKey == applePrivateKey &&
     other.applePrivateKeyId == applePrivateKeyId &&
     other.appleTeamId == appleTeamId &&
     other.authUrl == authUrl &&
     other.azureTenant == azureTenant &&
     other.clientId == clientId &&
     other.clientSecret == clientSecret &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.issuerUrl == issuerUrl &&
     other.label == label &&
     other.mapperUrl == mapperUrl &&
     other.projectRevisionId == projectRevisionId &&
     other.provider == provider &&
     other.providerId == providerId &&
     other.requestedClaims == requestedClaims &&
     other.scope == scope &&
     other.subjectSource == subjectSource &&
     other.tokenUrl == tokenUrl &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (applePrivateKey == null ? 0 : applePrivateKey!.hashCode) +
    (applePrivateKeyId == null ? 0 : applePrivateKeyId!.hashCode) +
    (appleTeamId == null ? 0 : appleTeamId!.hashCode) +
    (authUrl == null ? 0 : authUrl!.hashCode) +
    (azureTenant == null ? 0 : azureTenant!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (issuerUrl == null ? 0 : issuerUrl!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (mapperUrl == null ? 0 : mapperUrl!.hashCode) +
    (projectRevisionId == null ? 0 : projectRevisionId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerId == null ? 0 : providerId!.hashCode) +
    (requestedClaims == null ? 0 : requestedClaims!.hashCode) +
    (scope.hashCode) +
    (subjectSource == null ? 0 : subjectSource!.hashCode) +
    (tokenUrl == null ? 0 : tokenUrl!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'NormalizedProjectRevisionThirdPartyProvider[applePrivateKey=$applePrivateKey, applePrivateKeyId=$applePrivateKeyId, appleTeamId=$appleTeamId, authUrl=$authUrl, azureTenant=$azureTenant, clientId=$clientId, clientSecret=$clientSecret, createdAt=$createdAt, id=$id, issuerUrl=$issuerUrl, label=$label, mapperUrl=$mapperUrl, projectRevisionId=$projectRevisionId, provider=$provider, providerId=$providerId, requestedClaims=$requestedClaims, scope=$scope, subjectSource=$subjectSource, tokenUrl=$tokenUrl, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.applePrivateKey != null) {
      json[r'apple_private_key'] = this.applePrivateKey;
    } else {
      json[r'apple_private_key'] = null;
    }
    if (this.applePrivateKeyId != null) {
      json[r'apple_private_key_id'] = this.applePrivateKeyId;
    } else {
      json[r'apple_private_key_id'] = null;
    }
    if (this.appleTeamId != null) {
      json[r'apple_team_id'] = this.appleTeamId;
    } else {
      json[r'apple_team_id'] = null;
    }
    if (this.authUrl != null) {
      json[r'auth_url'] = this.authUrl;
    } else {
      json[r'auth_url'] = null;
    }
    if (this.azureTenant != null) {
      json[r'azure_tenant'] = this.azureTenant;
    } else {
      json[r'azure_tenant'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.issuerUrl != null) {
      json[r'issuer_url'] = this.issuerUrl;
    } else {
      json[r'issuer_url'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.mapperUrl != null) {
      json[r'mapper_url'] = this.mapperUrl;
    } else {
      json[r'mapper_url'] = null;
    }
    if (this.projectRevisionId != null) {
      json[r'project_revision_id'] = this.projectRevisionId;
    } else {
      json[r'project_revision_id'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.providerId != null) {
      json[r'provider_id'] = this.providerId;
    } else {
      json[r'provider_id'] = null;
    }
    if (this.requestedClaims != null) {
      json[r'requested_claims'] = this.requestedClaims;
    } else {
      json[r'requested_claims'] = null;
    }
      json[r'scope'] = this.scope;
    if (this.subjectSource != null) {
      json[r'subject_source'] = this.subjectSource;
    } else {
      json[r'subject_source'] = null;
    }
    if (this.tokenUrl != null) {
      json[r'token_url'] = this.tokenUrl;
    } else {
      json[r'token_url'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [NormalizedProjectRevisionThirdPartyProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NormalizedProjectRevisionThirdPartyProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NormalizedProjectRevisionThirdPartyProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NormalizedProjectRevisionThirdPartyProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NormalizedProjectRevisionThirdPartyProvider(
        applePrivateKey: mapValueOfType<String>(json, r'apple_private_key'),
        applePrivateKeyId: mapValueOfType<String>(json, r'apple_private_key_id'),
        appleTeamId: mapValueOfType<String>(json, r'apple_team_id'),
        authUrl: mapValueOfType<String>(json, r'auth_url'),
        azureTenant: mapValueOfType<String>(json, r'azure_tenant'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        createdAt: mapDateTime(json, r'created_at', ''),
        id: mapValueOfType<String>(json, r'id'),
        issuerUrl: mapValueOfType<String>(json, r'issuer_url'),
        label: mapValueOfType<String>(json, r'label'),
        mapperUrl: mapValueOfType<String>(json, r'mapper_url'),
        projectRevisionId: mapValueOfType<String>(json, r'project_revision_id'),
        provider: mapValueOfType<String>(json, r'provider'),
        providerId: mapValueOfType<String>(json, r'provider_id'),
        requestedClaims: mapValueOfType<Object>(json, r'requested_claims'),
        scope: json[r'scope'] is List
            ? (json[r'scope'] as List).cast<String>()
            : const [],
        subjectSource: mapValueOfType<String>(json, r'subject_source'),
        tokenUrl: mapValueOfType<String>(json, r'token_url'),
        updatedAt: mapDateTime(json, r'updated_at', ''),
      );
    }
    return null;
  }

  static List<NormalizedProjectRevisionThirdPartyProvider>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NormalizedProjectRevisionThirdPartyProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NormalizedProjectRevisionThirdPartyProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NormalizedProjectRevisionThirdPartyProvider> mapFromJson(dynamic json) {
    final map = <String, NormalizedProjectRevisionThirdPartyProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevisionThirdPartyProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NormalizedProjectRevisionThirdPartyProvider-objects as value to a dart map
  static Map<String, List<NormalizedProjectRevisionThirdPartyProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NormalizedProjectRevisionThirdPartyProvider>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevisionThirdPartyProvider.listFromJson(entry.value, growable: growable,);
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

