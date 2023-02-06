//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class NormalizedProjectRevision {
  /// Returns a new [NormalizedProjectRevision] instance.
  NormalizedProjectRevision({
    this.createdAt,
    this.hydraOauth2ClientCredentialsDefaultGrantAllowedScope,
    this.hydraOauth2GrantJwtIatOptional,
    this.hydraOauth2GrantJwtJtiOptional,
    this.hydraOauth2GrantJwtMaxTtl = '720h',
    this.hydraOauth2PkceEnforced,
    this.hydraOauth2PkceEnforcedForPublicClients,
    this.hydraOauth2RefreshTokenHook,
    this.hydraOauth2SessionAllowedTopLevelClaims = const [],
    this.hydraOauth2SessionExcludeNotBeforeClaim,
    this.hydraOidcDynamicClientRegistrationDefaultScope = const [],
    this.hydraOidcDynamicClientRegistrationEnabled,
    this.hydraOidcSubjectIdentifiersPairwiseSalt,
    this.hydraOidcSubjectIdentifiersSupportedTypes = const [],
    this.hydraSecretsCookie = const [],
    this.hydraSecretsSystem = const [],
    this.hydraServeAdminCorsAllowedOrigins = const [],
    this.hydraServeAdminCorsEnabled,
    this.hydraServeCookiesSameSiteLegacyWorkaround,
    this.hydraServeCookiesSameSiteMode,
    this.hydraServePublicCorsAllowedOrigins = const [],
    this.hydraServePublicCorsEnabled,
    this.hydraStrategiesAccessToken = const NormalizedProjectRevisionHydraStrategiesAccessTokenEnum._('opaque'),
    this.hydraStrategiesScope = const NormalizedProjectRevisionHydraStrategiesScopeEnum._('wildcard'),
    this.hydraTtlAccessToken = '30m',
    this.hydraTtlAuthCode = '720h',
    this.hydraTtlIdToken = '30m',
    this.hydraTtlLoginConsentRequest = '30m',
    this.hydraTtlRefreshToken = '720h',
    this.hydraUrlsConsent,
    this.hydraUrlsError,
    this.hydraUrlsLogin,
    this.hydraUrlsLogout,
    this.hydraUrlsPostLogoutRedirect,
    this.hydraUrlsSelfIssuer,
    this.hydraWebfingerJwksBroadcastKeys = const [],
    this.hydraWebfingerOidcDiscoveryAuthUrl,
    this.hydraWebfingerOidcDiscoveryClientRegistrationUrl,
    this.hydraWebfingerOidcDiscoveryJwksUrl,
    this.hydraWebfingerOidcDiscoverySupportedClaims = const [],
    this.hydraWebfingerOidcDiscoverySupportedScope = const [],
    this.hydraWebfingerOidcDiscoveryTokenUrl,
    this.hydraWebfingerOidcDiscoveryUserinfoUrl,
    this.id,
    this.ketoNamespaceConfiguration,
    this.ketoNamespaces = const [],
    this.ketoReadMaxDepth,
    this.kratosCookiesSameSite,
    this.kratosCourierSmtpConnectionUri,
    this.kratosCourierSmtpFromAddress,
    this.kratosCourierSmtpFromName,
    this.kratosCourierSmtpHeaders,
    this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml,
    this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext,
    this.kratosCourierTemplatesRecoveryCodeInvalidEmailSubject,
    this.kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml,
    this.kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext,
    this.kratosCourierTemplatesRecoveryCodeValidEmailSubject,
    this.kratosCourierTemplatesRecoveryInvalidEmailBodyHtml,
    this.kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext,
    this.kratosCourierTemplatesRecoveryInvalidEmailSubject,
    this.kratosCourierTemplatesRecoveryValidEmailBodyHtml,
    this.kratosCourierTemplatesRecoveryValidEmailBodyPlaintext,
    this.kratosCourierTemplatesRecoveryValidEmailSubject,
    this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml,
    this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext,
    this.kratosCourierTemplatesVerificationCodeInvalidEmailSubject,
    this.kratosCourierTemplatesVerificationCodeValidEmailBodyHtml,
    this.kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext,
    this.kratosCourierTemplatesVerificationCodeValidEmailSubject,
    this.kratosCourierTemplatesVerificationInvalidEmailBodyHtml,
    this.kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext,
    this.kratosCourierTemplatesVerificationInvalidEmailSubject,
    this.kratosCourierTemplatesVerificationValidEmailBodyHtml,
    this.kratosCourierTemplatesVerificationValidEmailBodyPlaintext,
    this.kratosCourierTemplatesVerificationValidEmailSubject,
    this.kratosFeatureFlagsCacheableSessions,
    this.kratosIdentitySchemas = const [],
    this.kratosOauth2ProviderHeaders,
    this.kratosOauth2ProviderUrl,
    this.kratosSecretsCipher = const [],
    this.kratosSecretsCookie = const [],
    this.kratosSecretsDefault = const [],
    this.kratosSelfserviceAllowedReturnUrls = const [],
    this.kratosSelfserviceDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsErrorUiUrl,
    this.kratosSelfserviceFlowsHooks = const [],
    this.kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsLoginLifespan,
    this.kratosSelfserviceFlowsLoginUiUrl,
    this.kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRecoveryEnabled,
    this.kratosSelfserviceFlowsRecoveryLifespan,
    this.kratosSelfserviceFlowsRecoveryUiUrl,
    this.kratosSelfserviceFlowsRecoveryUse,
    this.kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsRegistrationEnabled,
    this.kratosSelfserviceFlowsRegistrationLifespan,
    this.kratosSelfserviceFlowsRegistrationUiUrl,
    this.kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsSettingsLifespan,
    this.kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge,
    this.kratosSelfserviceFlowsSettingsRequiredAal,
    this.kratosSelfserviceFlowsSettingsUiUrl,
    this.kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl,
    this.kratosSelfserviceFlowsVerificationEnabled,
    this.kratosSelfserviceFlowsVerificationLifespan,
    this.kratosSelfserviceFlowsVerificationUiUrl,
    this.kratosSelfserviceFlowsVerificationUse,
    this.kratosSelfserviceMethodsCodeConfigLifespan,
    this.kratosSelfserviceMethodsCodeEnabled,
    this.kratosSelfserviceMethodsLinkConfigBaseUrl,
    this.kratosSelfserviceMethodsLinkConfigLifespan,
    this.kratosSelfserviceMethodsLinkEnabled,
    this.kratosSelfserviceMethodsLookupSecretEnabled,
    this.kratosSelfserviceMethodsOidcConfigBaseRedirectUri,
    this.kratosSelfserviceMethodsOidcConfigProviders = const [],
    this.kratosSelfserviceMethodsOidcEnabled,
    this.kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled,
    this.kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled,
    this.kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors,
    this.kratosSelfserviceMethodsPasswordConfigMaxBreaches,
    this.kratosSelfserviceMethodsPasswordConfigMinPasswordLength,
    this.kratosSelfserviceMethodsPasswordEnabled,
    this.kratosSelfserviceMethodsProfileEnabled,
    this.kratosSelfserviceMethodsTotpConfigIssuer,
    this.kratosSelfserviceMethodsTotpEnabled,
    this.kratosSelfserviceMethodsWebauthnConfigPasswordless,
    this.kratosSelfserviceMethodsWebauthnConfigRpDisplayName,
    this.kratosSelfserviceMethodsWebauthnConfigRpIcon,
    this.kratosSelfserviceMethodsWebauthnConfigRpId,
    this.kratosSelfserviceMethodsWebauthnConfigRpOrigin,
    this.kratosSelfserviceMethodsWebauthnEnabled,
    this.kratosSessionCookiePersistent,
    this.kratosSessionCookieSameSite,
    this.kratosSessionLifespan,
    this.kratosSessionWhoamiRequiredAal,
    required this.name,
    this.production,
    this.projectId,
    this.updatedAt,
  });

  /// The Project's Revision Creation Date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Automatically grant authorized OAuth2 Scope in OAuth2 Client Credentials Flow.  Each OAuth2 Client is allowed to request a predefined OAuth2 Scope (for example `read write`). If this option is enabled, the full scope is automatically granted when performing the OAuth2 Client Credentials flow.  If disabled, the OAuth2 Client has to request the scope in the OAuth2 request by providing the `scope` query parameter.  Setting this option to true is common if you need compatibility with MITREid.  This governs the \"oauth2.client_credentials.default_grant_allowed_scope\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2ClientCredentialsDefaultGrantAllowedScope;

  /// Configures if the issued at (`iat`) claim is required in the JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants (RFC7523).  If set to `false`, the `iat` claim is required. Set this value to `true` only after careful consideration.  This governs the \"oauth2.grant.jwt.iat_optional\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2GrantJwtIatOptional;

  /// Configures if the JSON Web Token ID (`jti`) claim is required in the JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants (RFC7523).  If set to `false`, the `jti` claim is required. Set this value to `true` only after careful consideration.  This governs the \"oauth2.grant.jwt.jti_optional\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2GrantJwtJtiOptional;

  /// Configures what the maximum age of a JWT assertion used in the JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants (RFC7523) can be.  This feature uses the `exp` claim and `iat` claim to calculate assertion age. Assertions exceeding the max age will be denied.  Useful as a safety measure and recommended to keep below 720h.  This governs the \"oauth2.grant.jwt.max_ttl\" setting.
  String hydraOauth2GrantJwtMaxTtl;

  /// Configures whether PKCE should be enforced for all OAuth2 Clients.  This governs the \"oauth2.pkce.enforced\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2PkceEnforced;

  /// Configures whether PKCE should be enforced for OAuth2 Clients without a client secret (public clients).  This governs the \"oauth2.pkce.enforced_for_public_clients\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2PkceEnforcedForPublicClients;

  /// Sets the Refresh Token Hook Endpoint. If set this endpoint will be called during the OAuth2 Token Refresh grant update the OAuth2 Access Token claims.  This governs the \"oauth2.refresh_token_hook\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraOauth2RefreshTokenHook;

  List<String> hydraOauth2SessionAllowedTopLevelClaims;

  /// Set to true if you want to exclude claim `nbf (not before)` part of access token.  This governs the \"oauth2.session.exclude_not_before_claim\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOauth2SessionExcludeNotBeforeClaim;

  List<String> hydraOidcDynamicClientRegistrationDefaultScope;

  /// Configures OpenID Connect Dynamic Client Registration.  This governs the \"oidc.dynamic_client_registration.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraOidcDynamicClientRegistrationEnabled;

  /// Configures OpenID Connect Discovery and overwrites the pairwise algorithm  This governs the \"oidc.subject_identifiers.pairwise_salt\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraOidcSubjectIdentifiersPairwiseSalt;

  List<String> hydraOidcSubjectIdentifiersSupportedTypes;

  List<String> hydraSecretsCookie;

  List<String> hydraSecretsSystem;

  List<String> hydraServeAdminCorsAllowedOrigins;

  /// Configures the Ory Hydra CORS Settings  This governs the \"serve.admin.cors.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraServeAdminCorsEnabled;

  /// Configures the Ory Hydra Cookie Same Site Legacy Workaround  This governs the \"serve.cookies.same_site_legacy_workaround\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraServeCookiesSameSiteLegacyWorkaround;

  /// Configures the Ory Hydra Cookie Same Site Mode  This governs the \"serve.cookies.same_site_mode\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraServeCookiesSameSiteMode;

  List<String> hydraServePublicCorsAllowedOrigins;

  /// Configures the Ory Hydra CORS Settings  This governs the \"serve.public.cors.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hydraServePublicCorsEnabled;

  /// Defines access token type. jwt is a bad idea, see https://www.ory.sh/docs/hydra/advanced#json-web-tokens  This governs the \"strategies.access_token\" setting. opaque OAUTH2_ACCESS_TOKEN_STRATEGY_OPAQUE jwt OAUTH2_ACCESS_TOKEN_STRATEGY_JWT
  NormalizedProjectRevisionHydraStrategiesAccessTokenEnum hydraStrategiesAccessToken;

  /// Defines how scopes are matched. For more details have a look at https://github.com/ory/fosite#scopes  This governs the \"strategies.scope\" setting. exact OAUTH2_SCOPE_STRATEGY_EXACT wildcard OAUTH2_SCOPE_STRATEGY_WILDCARD
  NormalizedProjectRevisionHydraStrategiesScopeEnum hydraStrategiesScope;

  /// This governs the \"ttl.access_token\" setting.
  String hydraTtlAccessToken;

  /// Configures how long refresh tokens are valid.  Set to -1 for refresh tokens to never expire. This is not recommended!  This governs the \"ttl.auth_code\" setting.
  String hydraTtlAuthCode;

  /// This governs the \"ttl.id_token\" setting.
  String hydraTtlIdToken;

  /// Configures how long a user login and consent flow may take.  This governs the \"ttl.login_consent_request\" setting.
  String hydraTtlLoginConsentRequest;

  /// Configures how long refresh tokens are valid.  Set to -1 for refresh tokens to never expire. This is not recommended!  This governs the \"ttl.refresh_token\" setting.
  String hydraTtlRefreshToken;

  /// Sets the OAuth2 Consent Endpoint URL of the OAuth2 User Login & Consent flow.  Defaults to the Ory Account Experience if left empty.  This governs the \"urls.consent\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsConsent;

  /// Sets the OAuth2 Error URL of the OAuth2 User Login & Consent flow.  Defaults to the Ory Account Experience if left empty.  This governs the \"urls.error\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsError;

  /// Sets the OAuth2 Login Endpoint URL of the OAuth2 User Login & Consent flow.  Defaults to the Ory Account Experience if left empty.  This governs the \"urls.login\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsLogin;

  /// Sets the logout endpoint.  Defaults to the Ory Account Experience if left empty.  This governs the \"urls.logout\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsLogout;

  /// When an OAuth2-related user agent requests to log out, they will be redirected to this url afterwards per default.  Defaults to the Ory Account Experience in development and your application in production mode when a custom domain is connected.  This governs the \"urls.post_logout_redirect\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsPostLogoutRedirect;

  /// This value will be used as the issuer in access and ID tokens. It must be specified and using HTTPS protocol, unless the development mode is enabled.  On the Ory Network it will be very rare that you want to modify this value. If left empty, it will default to the correct value for the Ory Network.  This governs the \"urls.self.issuer\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraUrlsSelfIssuer;

  List<String> hydraWebfingerJwksBroadcastKeys;

  /// Configures OpenID Connect Discovery and overwrites the OAuth2 Authorization URL.  This governs the \"webfinger.oidc.discovery.auth_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraWebfingerOidcDiscoveryAuthUrl;

  /// Configures OpenID Connect Discovery and overwrites the OpenID Connect Dynamic Client Registration Endpoint.  This governs the \"webfinger.oidc.discovery.client_registration_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraWebfingerOidcDiscoveryClientRegistrationUrl;

  /// Configures OpenID Connect Discovery and overwrites the JWKS URL.  This governs the \"webfinger.oidc.discovery.jwks_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraWebfingerOidcDiscoveryJwksUrl;

  List<String> hydraWebfingerOidcDiscoverySupportedClaims;

  List<String> hydraWebfingerOidcDiscoverySupportedScope;

  /// Configures OpenID Connect Discovery and overwrites the OAuth2 Token URL.  This governs the \"webfinger.oidc.discovery.token_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraWebfingerOidcDiscoveryTokenUrl;

  /// Configures OpenID Connect Discovery and overwrites userinfo endpoint to be advertised at the OpenID Connect Discovery endpoint /.well-known/openid-configuration. Defaults to Ory Hydra's userinfo endpoint at /userinfo. Set this value if you want to handle this endpoint yourself.  This governs the \"webfinger.oidc.discovery.userinfo_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hydraWebfingerOidcDiscoveryUserinfoUrl;

  /// The revision ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The Revisions' Keto Namespace Configuration  The string is a URL pointing to an OPL file with the configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ketoNamespaceConfiguration;

  List<KetoNamespace> ketoNamespaces;

  int? ketoReadMaxDepth;

  /// Configures the Ory Kratos Cookie SameSite Attribute  This governs the \"cookies.same_site\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCookiesSameSite;

  /// Configures the Ory Kratos SMTP Connection URI  This governs the \"courier.smtp.connection_uri\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierSmtpConnectionUri;

  /// Configures the Ory Kratos SMTP From Address  This governs the \"courier.smtp.from_address\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierSmtpFromAddress;

  /// Configures the Ory Kratos SMTP From Name  This governs the \"courier.smtp.from_name\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierSmtpFromName;

  /// NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
  Object? kratosCourierSmtpHeaders;

  /// Configures the Ory Kratos Invalid Recovery via Code Email Body HTML Template  This governs the \"courier.smtp.templates.recovery_code.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml;

  /// Configures the Ory Kratos Invalid Recovery via Code Email Body Plaintext Template  This governs the \"courier.smtp.templates.recovery_code.invalid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext;

  /// Configures the Ory Kratos Invalid Recovery via Code Email Subject Template  This governs the \"courier.smtp.templates.recovery_code.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeInvalidEmailSubject;

  /// Configures the Ory Kratos Valid Recovery via Code Email Body HTML Template  This governs the \"courier.smtp.templates.recovery_code.valid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml;

  /// Configures the Ory Kratos Valid Recovery via Code Email Body Plaintext Template  This governs the \"courier.smtp.templates.recovery_code.valid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext;

  /// Configures the Ory Kratos Valid Recovery via Code Email Subject Template  This governs the \"courier.smtp.templates.recovery_code.valid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryCodeValidEmailSubject;

  /// Configures the Ory Kratos Invalid Recovery Email Body HTML Template  This governs the \"courier.smtp.templates.recovery.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryInvalidEmailBodyHtml;

  /// Configures the Ory Kratos Invalid Recovery Email Body Plaintext Template  This governs the \"courier.smtp.templates.recovery.invalid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext;

  /// Configures the Ory Kratos Invalid Recovery Email Subject Template  This governs the \"courier.smtp.templates.recovery.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryInvalidEmailSubject;

  /// Configures the Ory Kratos Valid Recovery Email Body HTML Template  This governs the \"courier.smtp.templates.recovery.valid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryValidEmailBodyHtml;

  /// Configures the Ory Kratos Valid Recovery Email Body Plaintext Template  This governs the \"courier.smtp.templates.recovery.valid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryValidEmailBodyPlaintext;

  /// Configures the Ory Kratos Valid Recovery Email Subject Template  This governs the \"courier.smtp.templates.recovery.valid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesRecoveryValidEmailSubject;

  /// Configures the Ory Kratos Invalid Verification via Code Email Body HTML Template  This governs the \"courier.smtp.templates.verification_code.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml;

  /// Configures the Ory Kratos Invalid Verification via Code Email Body Plaintext Template  This governs the \"courier.smtp.templates.verification_code.invalid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext;

  /// Configures the Ory Kratos Invalid Verification via Code Email Subject Template  This governs the \"courier.smtp.templates.verification_code.invalid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeInvalidEmailSubject;

  /// Configures the Ory Kratos Valid Verification via Code Email Body HTML Template  This governs the \"courier.smtp.templates.verification_code.valid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeValidEmailBodyHtml;

  /// Configures the Ory Kratos Valid Verification via Code Email Body Plaintext Template  This governs the \"courier.smtp.templates.verification_code.valid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext;

  /// Configures the Ory Kratos Valid Verification via Code Email Subject Template  This governs the \"courier.smtp.templates.verification_code.valid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationCodeValidEmailSubject;

  /// Configures the Ory Kratos Invalid Verification Email Body HTML Template  This governs the \"courier.smtp.templates.verification.invalid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationInvalidEmailBodyHtml;

  /// Configures the Ory Kratos Invalid Verification Email Body Plaintext Template  This governs the \"courier.smtp.templates.verification.invalid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext;

  /// Configures the Ory Kratos Invalid Verification Email Subject Template  This governs the \"courier.smtp.templates.verification.invalid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationInvalidEmailSubject;

  /// Configures the Ory Kratos Valid Verification Email Body HTML Template  This governs the \"courier.smtp.templates.verification.valid.email.body.html\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationValidEmailBodyHtml;

  /// Configures the Ory Kratos Valid Verification Email Body Plaintext Template  This governs the \"courier.smtp.templates.verification.valid.email.body.plaintext\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationValidEmailBodyPlaintext;

  /// Configures the Ory Kratos Valid Verification Email Subject Template  This governs the \"courier.smtp.templates.verification.valid.email.subject\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosCourierTemplatesVerificationValidEmailSubject;

  /// Configures the Ory Kratos Session caching feature flag  This governs the \"feature_flags.cacheable_sessions\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosFeatureFlagsCacheableSessions;

  List<NormalizedProjectRevisionIdentitySchema> kratosIdentitySchemas;

  /// NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
  Object? kratosOauth2ProviderHeaders;

  /// The Revisions' OAuth2 Provider Integration URL  This governs the \"oauth2_provider.url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosOauth2ProviderUrl;

  List<String> kratosSecretsCipher;

  List<String> kratosSecretsCookie;

  List<String> kratosSecretsDefault;

  List<String> kratosSelfserviceAllowedReturnUrls;

  /// Configures the Ory Kratos Default Return URL  This governs the \"selfservice.allowed_return_urls\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Error UI URL  This governs the \"selfservice.flows.error.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsErrorUiUrl;

  List<NormalizedProjectRevisionHook> kratosSelfserviceFlowsHooks;

  /// Configures the Ory Kratos Login Default Return URL  This governs the \"selfservice.flows.login.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Login After OIDC Default Return URL  This governs the \"selfservice.flows.login.after.oidc.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Login After Password Default Return URL  This governs the \"selfservice.flows.login.after.password.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Login After WebAuthn Default Return URL  This governs the \"selfservice.flows.login.after.webauthn.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Login Lifespan  This governs the \"selfservice.flows.login.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginLifespan;

  /// Configures the Ory Kratos Login UI URL  This governs the \"selfservice.flows.login.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLoginUiUrl;

  /// Configures the Ory Kratos Logout Default Return URL  This governs the \"selfservice.flows.logout.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Recovery Default Return URL  This governs the \"selfservice.flows.recovery.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Recovery Enabled Setting  This governs the \"selfservice.flows.recovery.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceFlowsRecoveryEnabled;

  /// Configures the Ory Kratos Recovery Lifespan  This governs the \"selfservice.flows.recovery.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRecoveryLifespan;

  /// Configures the Ory Kratos Recovery UI URL  This governs the \"selfservice.flows.recovery.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRecoveryUiUrl;

  /// Configures the Ory Kratos Recovery strategy to use (\"link\" or \"code\")  This governs the \"selfservice.flows.recovery.use\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRecoveryUse;

  /// Configures the Ory Kratos Registration Default Return URL  This governs the \"selfservice.flows.registration.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Registration After OIDC Default Return URL  This governs the \"selfservice.flows.registration.after.oidc.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Registration After Password Default Return URL  This governs the \"selfservice.flows.registration.after.password.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Registration After Password Default Return URL  This governs the \"selfservice.flows.registration.after.password.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl;

  /// Configures the Whether Ory Kratos Registration is Enabled  This governs the \"selfservice.flows.registration.enabled\" setting.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceFlowsRegistrationEnabled;

  /// Configures the Ory Kratos Registration Lifespan  This governs the \"selfservice.flows.registration.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationLifespan;

  /// Configures the Ory Kratos Registration UI URL  This governs the \"selfservice.flows.registration.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsRegistrationUiUrl;

  /// Configures the Ory Kratos Settings Default Return URL  This governs the \"selfservice.flows.settings.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Settings Default Return URL After Updating Passwords  This governs the \"selfservice.flows.settings.after.password.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Settings Default Return URL After Updating Profiles  This governs the \"selfservice.flows.settings.after.profile.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Settings Lifespan  This governs the \"selfservice.flows.settings.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsLifespan;

  /// Configures the Ory Kratos Settings Privileged Session Max Age  This governs the \"selfservice.flows.settings.privileged_session_max_age\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge;

  /// Configures the Ory Kratos Settings Required AAL  This governs the \"selfservice.flows.settings.required_aal\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsRequiredAal;

  /// Configures the Ory Kratos Settings UI URL  This governs the \"selfservice.flows.settings.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsSettingsUiUrl;

  /// Configures the Ory Kratos Verification Default Return URL  This governs the \"selfservice.flows.verification.after.default_browser_return_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl;

  /// Configures the Ory Kratos Verification Enabled Setting  This governs the \"selfservice.flows.verification.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceFlowsVerificationEnabled;

  /// Configures the Ory Kratos Verification Lifespan  This governs the \"selfservice.flows.verification.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsVerificationLifespan;

  /// Configures the Ory Kratos Verification UI URL  This governs the \"selfservice.flows.verification.ui_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsVerificationUiUrl;

  /// Configures the Ory Kratos Strategy to use for Verification  This governs the \"selfservice.flows.verification.use\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceFlowsVerificationUse;

  /// Configures the Ory Kratos Code Method's lifespan  This governs the \"selfservice.methods.code.config.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsCodeConfigLifespan;

  /// Configures whether Ory Kratos Code Method is enabled  This governs the \"selfservice.methods.code.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsCodeEnabled;

  /// Configures the Base URL which Recovery, Verification, and Login Links Point to  It is recommended to leave this value empty. It will be appropriately configured to the best matching domain (e.g. when using custom domains) automatically.  This governs the \"selfservice.methods.link.config.base_url\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsLinkConfigBaseUrl;

  /// Configures the Ory Kratos Link Method's lifespan  This governs the \"selfservice.methods.link.config.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsLinkConfigLifespan;

  /// Configures whether Ory Kratos Link Method is enabled  This governs the \"selfservice.methods.link.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsLinkEnabled;

  /// Configures whether Ory Kratos TOTP Lookup Secret is enabled  This governs the \"selfservice.methods.lookup_secret.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsLookupSecretEnabled;

  /// Configures the Ory Kratos Third Party / OpenID Connect base redirect URI  This governs the \"selfservice.methods.oidc.config.base_redirect_uri\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsOidcConfigBaseRedirectUri;

  List<NormalizedProjectRevisionThirdPartyProvider> kratosSelfserviceMethodsOidcConfigProviders;

  /// Configures whether Ory Kratos Third Party / OpenID Connect Login is enabled  This governs the \"selfservice.methods.oidc.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsOidcEnabled;

  /// Configures whether Ory Kratos Password HIBP Checks is enabled  This governs the \"selfservice.methods.password.config.haveibeenpwned_enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled;

  /// Configures whether Ory Kratos Password should disable the similarity policy.  This governs the \"selfservice.methods.password.config.identifier_similarity_check_enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled;

  /// Configures whether Ory Kratos Password Should ignore HIBPWND Network Errors  This governs the \"selfservice.methods.password.config.ignore_network_errors\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors;

  /// Configures Ory Kratos Password Max Breaches Detection  This governs the \"selfservice.methods.password.config.max_breaches\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? kratosSelfserviceMethodsPasswordConfigMaxBreaches;

  /// Configures the minimum length of passwords.  This governs the \"selfservice.methods.password.config.min_password_length\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? kratosSelfserviceMethodsPasswordConfigMinPasswordLength;

  /// Configures whether Ory Kratos Password Method is enabled  This governs the \"selfservice.methods.password.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsPasswordEnabled;

  /// Configures whether Ory Kratos Profile Method is enabled  This governs the \"selfservice.methods.profile.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsProfileEnabled;

  /// Configures Ory Kratos TOTP Issuer  This governs the \"selfservice.methods.totp.config.issuer\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsTotpConfigIssuer;

  /// Configures whether Ory Kratos TOTP Method is enabled  This governs the \"selfservice.methods.totp.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsTotpEnabled;

  /// Configures whether Ory Kratos Webauthn is used for passwordless flows  This governs the \"selfservice.methods.webauthn.config.passwordless\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsWebauthnConfigPasswordless;

  /// Configures the Ory Kratos Webauthn RP Display Name  This governs the \"selfservice.methods.webauthn.config.rp.display_name\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsWebauthnConfigRpDisplayName;

  /// Configures the Ory Kratos Webauthn RP Icon  This governs the \"selfservice.methods.webauthn.config.rp.icon\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsWebauthnConfigRpIcon;

  /// Configures the Ory Kratos Webauthn RP ID  This governs the \"selfservice.methods.webauthn.config.rp.id\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsWebauthnConfigRpId;

  /// Configures the Ory Kratos Webauthn RP Origin  This governs the \"selfservice.methods.webauthn.config.rp.origin\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSelfserviceMethodsWebauthnConfigRpOrigin;

  /// Configures whether Ory Kratos Webauthn is enabled  This governs the \"selfservice.methods.webauthn.enabled\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSelfserviceMethodsWebauthnEnabled;

  /// Configures the Ory Kratos Session Cookie Persistent Attribute  This governs the \"session.cookie.persistent\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kratosSessionCookiePersistent;

  /// Configures the Ory Kratos Session Cookie SameSite Attribute  This governs the \"session.cookie.same_site\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSessionCookieSameSite;

  /// Configures the Ory Kratos Session Lifespan  This governs the \"session.lifespan\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSessionLifespan;

  /// Configures the Ory Kratos Session Whoami AAL requirement  This governs the \"session.whoami.required_aal\" setting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kratosSessionWhoamiRequiredAal;

  /// The project's name.
  String name;

  /// Whether this project is in production mode or not.  In development mode, a low-security profile is used making it easier to develop against your, for example, local environment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? production;

  /// The Revision's Project ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// Last Time Project's Revision was Updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NormalizedProjectRevision &&
     other.createdAt == createdAt &&
     other.hydraOauth2ClientCredentialsDefaultGrantAllowedScope == hydraOauth2ClientCredentialsDefaultGrantAllowedScope &&
     other.hydraOauth2GrantJwtIatOptional == hydraOauth2GrantJwtIatOptional &&
     other.hydraOauth2GrantJwtJtiOptional == hydraOauth2GrantJwtJtiOptional &&
     other.hydraOauth2GrantJwtMaxTtl == hydraOauth2GrantJwtMaxTtl &&
     other.hydraOauth2PkceEnforced == hydraOauth2PkceEnforced &&
     other.hydraOauth2PkceEnforcedForPublicClients == hydraOauth2PkceEnforcedForPublicClients &&
     other.hydraOauth2RefreshTokenHook == hydraOauth2RefreshTokenHook &&
     other.hydraOauth2SessionAllowedTopLevelClaims == hydraOauth2SessionAllowedTopLevelClaims &&
     other.hydraOauth2SessionExcludeNotBeforeClaim == hydraOauth2SessionExcludeNotBeforeClaim &&
     other.hydraOidcDynamicClientRegistrationDefaultScope == hydraOidcDynamicClientRegistrationDefaultScope &&
     other.hydraOidcDynamicClientRegistrationEnabled == hydraOidcDynamicClientRegistrationEnabled &&
     other.hydraOidcSubjectIdentifiersPairwiseSalt == hydraOidcSubjectIdentifiersPairwiseSalt &&
     other.hydraOidcSubjectIdentifiersSupportedTypes == hydraOidcSubjectIdentifiersSupportedTypes &&
     other.hydraSecretsCookie == hydraSecretsCookie &&
     other.hydraSecretsSystem == hydraSecretsSystem &&
     other.hydraServeAdminCorsAllowedOrigins == hydraServeAdminCorsAllowedOrigins &&
     other.hydraServeAdminCorsEnabled == hydraServeAdminCorsEnabled &&
     other.hydraServeCookiesSameSiteLegacyWorkaround == hydraServeCookiesSameSiteLegacyWorkaround &&
     other.hydraServeCookiesSameSiteMode == hydraServeCookiesSameSiteMode &&
     other.hydraServePublicCorsAllowedOrigins == hydraServePublicCorsAllowedOrigins &&
     other.hydraServePublicCorsEnabled == hydraServePublicCorsEnabled &&
     other.hydraStrategiesAccessToken == hydraStrategiesAccessToken &&
     other.hydraStrategiesScope == hydraStrategiesScope &&
     other.hydraTtlAccessToken == hydraTtlAccessToken &&
     other.hydraTtlAuthCode == hydraTtlAuthCode &&
     other.hydraTtlIdToken == hydraTtlIdToken &&
     other.hydraTtlLoginConsentRequest == hydraTtlLoginConsentRequest &&
     other.hydraTtlRefreshToken == hydraTtlRefreshToken &&
     other.hydraUrlsConsent == hydraUrlsConsent &&
     other.hydraUrlsError == hydraUrlsError &&
     other.hydraUrlsLogin == hydraUrlsLogin &&
     other.hydraUrlsLogout == hydraUrlsLogout &&
     other.hydraUrlsPostLogoutRedirect == hydraUrlsPostLogoutRedirect &&
     other.hydraUrlsSelfIssuer == hydraUrlsSelfIssuer &&
     other.hydraWebfingerJwksBroadcastKeys == hydraWebfingerJwksBroadcastKeys &&
     other.hydraWebfingerOidcDiscoveryAuthUrl == hydraWebfingerOidcDiscoveryAuthUrl &&
     other.hydraWebfingerOidcDiscoveryClientRegistrationUrl == hydraWebfingerOidcDiscoveryClientRegistrationUrl &&
     other.hydraWebfingerOidcDiscoveryJwksUrl == hydraWebfingerOidcDiscoveryJwksUrl &&
     other.hydraWebfingerOidcDiscoverySupportedClaims == hydraWebfingerOidcDiscoverySupportedClaims &&
     other.hydraWebfingerOidcDiscoverySupportedScope == hydraWebfingerOidcDiscoverySupportedScope &&
     other.hydraWebfingerOidcDiscoveryTokenUrl == hydraWebfingerOidcDiscoveryTokenUrl &&
     other.hydraWebfingerOidcDiscoveryUserinfoUrl == hydraWebfingerOidcDiscoveryUserinfoUrl &&
     other.id == id &&
     other.ketoNamespaceConfiguration == ketoNamespaceConfiguration &&
     other.ketoNamespaces == ketoNamespaces &&
     other.ketoReadMaxDepth == ketoReadMaxDepth &&
     other.kratosCookiesSameSite == kratosCookiesSameSite &&
     other.kratosCourierSmtpConnectionUri == kratosCourierSmtpConnectionUri &&
     other.kratosCourierSmtpFromAddress == kratosCourierSmtpFromAddress &&
     other.kratosCourierSmtpFromName == kratosCourierSmtpFromName &&
     other.kratosCourierSmtpHeaders == kratosCourierSmtpHeaders &&
     other.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml == kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml &&
     other.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext == kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext &&
     other.kratosCourierTemplatesRecoveryCodeInvalidEmailSubject == kratosCourierTemplatesRecoveryCodeInvalidEmailSubject &&
     other.kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml == kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml &&
     other.kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext == kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext &&
     other.kratosCourierTemplatesRecoveryCodeValidEmailSubject == kratosCourierTemplatesRecoveryCodeValidEmailSubject &&
     other.kratosCourierTemplatesRecoveryInvalidEmailBodyHtml == kratosCourierTemplatesRecoveryInvalidEmailBodyHtml &&
     other.kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext == kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext &&
     other.kratosCourierTemplatesRecoveryInvalidEmailSubject == kratosCourierTemplatesRecoveryInvalidEmailSubject &&
     other.kratosCourierTemplatesRecoveryValidEmailBodyHtml == kratosCourierTemplatesRecoveryValidEmailBodyHtml &&
     other.kratosCourierTemplatesRecoveryValidEmailBodyPlaintext == kratosCourierTemplatesRecoveryValidEmailBodyPlaintext &&
     other.kratosCourierTemplatesRecoveryValidEmailSubject == kratosCourierTemplatesRecoveryValidEmailSubject &&
     other.kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml == kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml &&
     other.kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext == kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext &&
     other.kratosCourierTemplatesVerificationCodeInvalidEmailSubject == kratosCourierTemplatesVerificationCodeInvalidEmailSubject &&
     other.kratosCourierTemplatesVerificationCodeValidEmailBodyHtml == kratosCourierTemplatesVerificationCodeValidEmailBodyHtml &&
     other.kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext == kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext &&
     other.kratosCourierTemplatesVerificationCodeValidEmailSubject == kratosCourierTemplatesVerificationCodeValidEmailSubject &&
     other.kratosCourierTemplatesVerificationInvalidEmailBodyHtml == kratosCourierTemplatesVerificationInvalidEmailBodyHtml &&
     other.kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext == kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext &&
     other.kratosCourierTemplatesVerificationInvalidEmailSubject == kratosCourierTemplatesVerificationInvalidEmailSubject &&
     other.kratosCourierTemplatesVerificationValidEmailBodyHtml == kratosCourierTemplatesVerificationValidEmailBodyHtml &&
     other.kratosCourierTemplatesVerificationValidEmailBodyPlaintext == kratosCourierTemplatesVerificationValidEmailBodyPlaintext &&
     other.kratosCourierTemplatesVerificationValidEmailSubject == kratosCourierTemplatesVerificationValidEmailSubject &&
     other.kratosFeatureFlagsCacheableSessions == kratosFeatureFlagsCacheableSessions &&
     other.kratosIdentitySchemas == kratosIdentitySchemas &&
     other.kratosOauth2ProviderHeaders == kratosOauth2ProviderHeaders &&
     other.kratosOauth2ProviderUrl == kratosOauth2ProviderUrl &&
     other.kratosSecretsCipher == kratosSecretsCipher &&
     other.kratosSecretsCookie == kratosSecretsCookie &&
     other.kratosSecretsDefault == kratosSecretsDefault &&
     other.kratosSelfserviceAllowedReturnUrls == kratosSelfserviceAllowedReturnUrls &&
     other.kratosSelfserviceDefaultBrowserReturnUrl == kratosSelfserviceDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsErrorUiUrl == kratosSelfserviceFlowsErrorUiUrl &&
     other.kratosSelfserviceFlowsHooks == kratosSelfserviceFlowsHooks &&
     other.kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl == kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl == kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl == kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsLoginLifespan == kratosSelfserviceFlowsLoginLifespan &&
     other.kratosSelfserviceFlowsLoginUiUrl == kratosSelfserviceFlowsLoginUiUrl &&
     other.kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRecoveryEnabled == kratosSelfserviceFlowsRecoveryEnabled &&
     other.kratosSelfserviceFlowsRecoveryLifespan == kratosSelfserviceFlowsRecoveryLifespan &&
     other.kratosSelfserviceFlowsRecoveryUiUrl == kratosSelfserviceFlowsRecoveryUiUrl &&
     other.kratosSelfserviceFlowsRecoveryUse == kratosSelfserviceFlowsRecoveryUse &&
     other.kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl == kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl == kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl == kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsRegistrationEnabled == kratosSelfserviceFlowsRegistrationEnabled &&
     other.kratosSelfserviceFlowsRegistrationLifespan == kratosSelfserviceFlowsRegistrationLifespan &&
     other.kratosSelfserviceFlowsRegistrationUiUrl == kratosSelfserviceFlowsRegistrationUiUrl &&
     other.kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl == kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl == kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsSettingsLifespan == kratosSelfserviceFlowsSettingsLifespan &&
     other.kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge == kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge &&
     other.kratosSelfserviceFlowsSettingsRequiredAal == kratosSelfserviceFlowsSettingsRequiredAal &&
     other.kratosSelfserviceFlowsSettingsUiUrl == kratosSelfserviceFlowsSettingsUiUrl &&
     other.kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl == kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl &&
     other.kratosSelfserviceFlowsVerificationEnabled == kratosSelfserviceFlowsVerificationEnabled &&
     other.kratosSelfserviceFlowsVerificationLifespan == kratosSelfserviceFlowsVerificationLifespan &&
     other.kratosSelfserviceFlowsVerificationUiUrl == kratosSelfserviceFlowsVerificationUiUrl &&
     other.kratosSelfserviceFlowsVerificationUse == kratosSelfserviceFlowsVerificationUse &&
     other.kratosSelfserviceMethodsCodeConfigLifespan == kratosSelfserviceMethodsCodeConfigLifespan &&
     other.kratosSelfserviceMethodsCodeEnabled == kratosSelfserviceMethodsCodeEnabled &&
     other.kratosSelfserviceMethodsLinkConfigBaseUrl == kratosSelfserviceMethodsLinkConfigBaseUrl &&
     other.kratosSelfserviceMethodsLinkConfigLifespan == kratosSelfserviceMethodsLinkConfigLifespan &&
     other.kratosSelfserviceMethodsLinkEnabled == kratosSelfserviceMethodsLinkEnabled &&
     other.kratosSelfserviceMethodsLookupSecretEnabled == kratosSelfserviceMethodsLookupSecretEnabled &&
     other.kratosSelfserviceMethodsOidcConfigBaseRedirectUri == kratosSelfserviceMethodsOidcConfigBaseRedirectUri &&
     other.kratosSelfserviceMethodsOidcConfigProviders == kratosSelfserviceMethodsOidcConfigProviders &&
     other.kratosSelfserviceMethodsOidcEnabled == kratosSelfserviceMethodsOidcEnabled &&
     other.kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled == kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled &&
     other.kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled == kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled &&
     other.kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors == kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors &&
     other.kratosSelfserviceMethodsPasswordConfigMaxBreaches == kratosSelfserviceMethodsPasswordConfigMaxBreaches &&
     other.kratosSelfserviceMethodsPasswordConfigMinPasswordLength == kratosSelfserviceMethodsPasswordConfigMinPasswordLength &&
     other.kratosSelfserviceMethodsPasswordEnabled == kratosSelfserviceMethodsPasswordEnabled &&
     other.kratosSelfserviceMethodsProfileEnabled == kratosSelfserviceMethodsProfileEnabled &&
     other.kratosSelfserviceMethodsTotpConfigIssuer == kratosSelfserviceMethodsTotpConfigIssuer &&
     other.kratosSelfserviceMethodsTotpEnabled == kratosSelfserviceMethodsTotpEnabled &&
     other.kratosSelfserviceMethodsWebauthnConfigPasswordless == kratosSelfserviceMethodsWebauthnConfigPasswordless &&
     other.kratosSelfserviceMethodsWebauthnConfigRpDisplayName == kratosSelfserviceMethodsWebauthnConfigRpDisplayName &&
     other.kratosSelfserviceMethodsWebauthnConfigRpIcon == kratosSelfserviceMethodsWebauthnConfigRpIcon &&
     other.kratosSelfserviceMethodsWebauthnConfigRpId == kratosSelfserviceMethodsWebauthnConfigRpId &&
     other.kratosSelfserviceMethodsWebauthnConfigRpOrigin == kratosSelfserviceMethodsWebauthnConfigRpOrigin &&
     other.kratosSelfserviceMethodsWebauthnEnabled == kratosSelfserviceMethodsWebauthnEnabled &&
     other.kratosSessionCookiePersistent == kratosSessionCookiePersistent &&
     other.kratosSessionCookieSameSite == kratosSessionCookieSameSite &&
     other.kratosSessionLifespan == kratosSessionLifespan &&
     other.kratosSessionWhoamiRequiredAal == kratosSessionWhoamiRequiredAal &&
     other.name == name &&
     other.production == production &&
     other.projectId == projectId &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (hydraOauth2ClientCredentialsDefaultGrantAllowedScope == null ? 0 : hydraOauth2ClientCredentialsDefaultGrantAllowedScope!.hashCode) +
    (hydraOauth2GrantJwtIatOptional == null ? 0 : hydraOauth2GrantJwtIatOptional!.hashCode) +
    (hydraOauth2GrantJwtJtiOptional == null ? 0 : hydraOauth2GrantJwtJtiOptional!.hashCode) +
    (hydraOauth2GrantJwtMaxTtl.hashCode) +
    (hydraOauth2PkceEnforced == null ? 0 : hydraOauth2PkceEnforced!.hashCode) +
    (hydraOauth2PkceEnforcedForPublicClients == null ? 0 : hydraOauth2PkceEnforcedForPublicClients!.hashCode) +
    (hydraOauth2RefreshTokenHook == null ? 0 : hydraOauth2RefreshTokenHook!.hashCode) +
    (hydraOauth2SessionAllowedTopLevelClaims.hashCode) +
    (hydraOauth2SessionExcludeNotBeforeClaim == null ? 0 : hydraOauth2SessionExcludeNotBeforeClaim!.hashCode) +
    (hydraOidcDynamicClientRegistrationDefaultScope.hashCode) +
    (hydraOidcDynamicClientRegistrationEnabled == null ? 0 : hydraOidcDynamicClientRegistrationEnabled!.hashCode) +
    (hydraOidcSubjectIdentifiersPairwiseSalt == null ? 0 : hydraOidcSubjectIdentifiersPairwiseSalt!.hashCode) +
    (hydraOidcSubjectIdentifiersSupportedTypes.hashCode) +
    (hydraSecretsCookie.hashCode) +
    (hydraSecretsSystem.hashCode) +
    (hydraServeAdminCorsAllowedOrigins.hashCode) +
    (hydraServeAdminCorsEnabled == null ? 0 : hydraServeAdminCorsEnabled!.hashCode) +
    (hydraServeCookiesSameSiteLegacyWorkaround == null ? 0 : hydraServeCookiesSameSiteLegacyWorkaround!.hashCode) +
    (hydraServeCookiesSameSiteMode == null ? 0 : hydraServeCookiesSameSiteMode!.hashCode) +
    (hydraServePublicCorsAllowedOrigins.hashCode) +
    (hydraServePublicCorsEnabled == null ? 0 : hydraServePublicCorsEnabled!.hashCode) +
    (hydraStrategiesAccessToken.hashCode) +
    (hydraStrategiesScope.hashCode) +
    (hydraTtlAccessToken.hashCode) +
    (hydraTtlAuthCode.hashCode) +
    (hydraTtlIdToken.hashCode) +
    (hydraTtlLoginConsentRequest.hashCode) +
    (hydraTtlRefreshToken.hashCode) +
    (hydraUrlsConsent == null ? 0 : hydraUrlsConsent!.hashCode) +
    (hydraUrlsError == null ? 0 : hydraUrlsError!.hashCode) +
    (hydraUrlsLogin == null ? 0 : hydraUrlsLogin!.hashCode) +
    (hydraUrlsLogout == null ? 0 : hydraUrlsLogout!.hashCode) +
    (hydraUrlsPostLogoutRedirect == null ? 0 : hydraUrlsPostLogoutRedirect!.hashCode) +
    (hydraUrlsSelfIssuer == null ? 0 : hydraUrlsSelfIssuer!.hashCode) +
    (hydraWebfingerJwksBroadcastKeys.hashCode) +
    (hydraWebfingerOidcDiscoveryAuthUrl == null ? 0 : hydraWebfingerOidcDiscoveryAuthUrl!.hashCode) +
    (hydraWebfingerOidcDiscoveryClientRegistrationUrl == null ? 0 : hydraWebfingerOidcDiscoveryClientRegistrationUrl!.hashCode) +
    (hydraWebfingerOidcDiscoveryJwksUrl == null ? 0 : hydraWebfingerOidcDiscoveryJwksUrl!.hashCode) +
    (hydraWebfingerOidcDiscoverySupportedClaims.hashCode) +
    (hydraWebfingerOidcDiscoverySupportedScope.hashCode) +
    (hydraWebfingerOidcDiscoveryTokenUrl == null ? 0 : hydraWebfingerOidcDiscoveryTokenUrl!.hashCode) +
    (hydraWebfingerOidcDiscoveryUserinfoUrl == null ? 0 : hydraWebfingerOidcDiscoveryUserinfoUrl!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ketoNamespaceConfiguration == null ? 0 : ketoNamespaceConfiguration!.hashCode) +
    (ketoNamespaces.hashCode) +
    (ketoReadMaxDepth == null ? 0 : ketoReadMaxDepth!.hashCode) +
    (kratosCookiesSameSite == null ? 0 : kratosCookiesSameSite!.hashCode) +
    (kratosCourierSmtpConnectionUri == null ? 0 : kratosCourierSmtpConnectionUri!.hashCode) +
    (kratosCourierSmtpFromAddress == null ? 0 : kratosCourierSmtpFromAddress!.hashCode) +
    (kratosCourierSmtpFromName == null ? 0 : kratosCourierSmtpFromName!.hashCode) +
    (kratosCourierSmtpHeaders == null ? 0 : kratosCourierSmtpHeaders!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml == null ? 0 : kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeInvalidEmailSubject == null ? 0 : kratosCourierTemplatesRecoveryCodeInvalidEmailSubject!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml == null ? 0 : kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesRecoveryCodeValidEmailSubject == null ? 0 : kratosCourierTemplatesRecoveryCodeValidEmailSubject!.hashCode) +
    (kratosCourierTemplatesRecoveryInvalidEmailBodyHtml == null ? 0 : kratosCourierTemplatesRecoveryInvalidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesRecoveryInvalidEmailSubject == null ? 0 : kratosCourierTemplatesRecoveryInvalidEmailSubject!.hashCode) +
    (kratosCourierTemplatesRecoveryValidEmailBodyHtml == null ? 0 : kratosCourierTemplatesRecoveryValidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesRecoveryValidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesRecoveryValidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesRecoveryValidEmailSubject == null ? 0 : kratosCourierTemplatesRecoveryValidEmailSubject!.hashCode) +
    (kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml == null ? 0 : kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesVerificationCodeInvalidEmailSubject == null ? 0 : kratosCourierTemplatesVerificationCodeInvalidEmailSubject!.hashCode) +
    (kratosCourierTemplatesVerificationCodeValidEmailBodyHtml == null ? 0 : kratosCourierTemplatesVerificationCodeValidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesVerificationCodeValidEmailSubject == null ? 0 : kratosCourierTemplatesVerificationCodeValidEmailSubject!.hashCode) +
    (kratosCourierTemplatesVerificationInvalidEmailBodyHtml == null ? 0 : kratosCourierTemplatesVerificationInvalidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesVerificationInvalidEmailSubject == null ? 0 : kratosCourierTemplatesVerificationInvalidEmailSubject!.hashCode) +
    (kratosCourierTemplatesVerificationValidEmailBodyHtml == null ? 0 : kratosCourierTemplatesVerificationValidEmailBodyHtml!.hashCode) +
    (kratosCourierTemplatesVerificationValidEmailBodyPlaintext == null ? 0 : kratosCourierTemplatesVerificationValidEmailBodyPlaintext!.hashCode) +
    (kratosCourierTemplatesVerificationValidEmailSubject == null ? 0 : kratosCourierTemplatesVerificationValidEmailSubject!.hashCode) +
    (kratosFeatureFlagsCacheableSessions == null ? 0 : kratosFeatureFlagsCacheableSessions!.hashCode) +
    (kratosIdentitySchemas.hashCode) +
    (kratosOauth2ProviderHeaders == null ? 0 : kratosOauth2ProviderHeaders!.hashCode) +
    (kratosOauth2ProviderUrl == null ? 0 : kratosOauth2ProviderUrl!.hashCode) +
    (kratosSecretsCipher.hashCode) +
    (kratosSecretsCookie.hashCode) +
    (kratosSecretsDefault.hashCode) +
    (kratosSelfserviceAllowedReturnUrls.hashCode) +
    (kratosSelfserviceDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsErrorUiUrl == null ? 0 : kratosSelfserviceFlowsErrorUiUrl!.hashCode) +
    (kratosSelfserviceFlowsHooks.hashCode) +
    (kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsLoginLifespan == null ? 0 : kratosSelfserviceFlowsLoginLifespan!.hashCode) +
    (kratosSelfserviceFlowsLoginUiUrl == null ? 0 : kratosSelfserviceFlowsLoginUiUrl!.hashCode) +
    (kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRecoveryEnabled == null ? 0 : kratosSelfserviceFlowsRecoveryEnabled!.hashCode) +
    (kratosSelfserviceFlowsRecoveryLifespan == null ? 0 : kratosSelfserviceFlowsRecoveryLifespan!.hashCode) +
    (kratosSelfserviceFlowsRecoveryUiUrl == null ? 0 : kratosSelfserviceFlowsRecoveryUiUrl!.hashCode) +
    (kratosSelfserviceFlowsRecoveryUse == null ? 0 : kratosSelfserviceFlowsRecoveryUse!.hashCode) +
    (kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsRegistrationEnabled == null ? 0 : kratosSelfserviceFlowsRegistrationEnabled!.hashCode) +
    (kratosSelfserviceFlowsRegistrationLifespan == null ? 0 : kratosSelfserviceFlowsRegistrationLifespan!.hashCode) +
    (kratosSelfserviceFlowsRegistrationUiUrl == null ? 0 : kratosSelfserviceFlowsRegistrationUiUrl!.hashCode) +
    (kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsSettingsLifespan == null ? 0 : kratosSelfserviceFlowsSettingsLifespan!.hashCode) +
    (kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge == null ? 0 : kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge!.hashCode) +
    (kratosSelfserviceFlowsSettingsRequiredAal == null ? 0 : kratosSelfserviceFlowsSettingsRequiredAal!.hashCode) +
    (kratosSelfserviceFlowsSettingsUiUrl == null ? 0 : kratosSelfserviceFlowsSettingsUiUrl!.hashCode) +
    (kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl == null ? 0 : kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl!.hashCode) +
    (kratosSelfserviceFlowsVerificationEnabled == null ? 0 : kratosSelfserviceFlowsVerificationEnabled!.hashCode) +
    (kratosSelfserviceFlowsVerificationLifespan == null ? 0 : kratosSelfserviceFlowsVerificationLifespan!.hashCode) +
    (kratosSelfserviceFlowsVerificationUiUrl == null ? 0 : kratosSelfserviceFlowsVerificationUiUrl!.hashCode) +
    (kratosSelfserviceFlowsVerificationUse == null ? 0 : kratosSelfserviceFlowsVerificationUse!.hashCode) +
    (kratosSelfserviceMethodsCodeConfigLifespan == null ? 0 : kratosSelfserviceMethodsCodeConfigLifespan!.hashCode) +
    (kratosSelfserviceMethodsCodeEnabled == null ? 0 : kratosSelfserviceMethodsCodeEnabled!.hashCode) +
    (kratosSelfserviceMethodsLinkConfigBaseUrl == null ? 0 : kratosSelfserviceMethodsLinkConfigBaseUrl!.hashCode) +
    (kratosSelfserviceMethodsLinkConfigLifespan == null ? 0 : kratosSelfserviceMethodsLinkConfigLifespan!.hashCode) +
    (kratosSelfserviceMethodsLinkEnabled == null ? 0 : kratosSelfserviceMethodsLinkEnabled!.hashCode) +
    (kratosSelfserviceMethodsLookupSecretEnabled == null ? 0 : kratosSelfserviceMethodsLookupSecretEnabled!.hashCode) +
    (kratosSelfserviceMethodsOidcConfigBaseRedirectUri == null ? 0 : kratosSelfserviceMethodsOidcConfigBaseRedirectUri!.hashCode) +
    (kratosSelfserviceMethodsOidcConfigProviders.hashCode) +
    (kratosSelfserviceMethodsOidcEnabled == null ? 0 : kratosSelfserviceMethodsOidcEnabled!.hashCode) +
    (kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled == null ? 0 : kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled!.hashCode) +
    (kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled == null ? 0 : kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled!.hashCode) +
    (kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors == null ? 0 : kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors!.hashCode) +
    (kratosSelfserviceMethodsPasswordConfigMaxBreaches == null ? 0 : kratosSelfserviceMethodsPasswordConfigMaxBreaches!.hashCode) +
    (kratosSelfserviceMethodsPasswordConfigMinPasswordLength == null ? 0 : kratosSelfserviceMethodsPasswordConfigMinPasswordLength!.hashCode) +
    (kratosSelfserviceMethodsPasswordEnabled == null ? 0 : kratosSelfserviceMethodsPasswordEnabled!.hashCode) +
    (kratosSelfserviceMethodsProfileEnabled == null ? 0 : kratosSelfserviceMethodsProfileEnabled!.hashCode) +
    (kratosSelfserviceMethodsTotpConfigIssuer == null ? 0 : kratosSelfserviceMethodsTotpConfigIssuer!.hashCode) +
    (kratosSelfserviceMethodsTotpEnabled == null ? 0 : kratosSelfserviceMethodsTotpEnabled!.hashCode) +
    (kratosSelfserviceMethodsWebauthnConfigPasswordless == null ? 0 : kratosSelfserviceMethodsWebauthnConfigPasswordless!.hashCode) +
    (kratosSelfserviceMethodsWebauthnConfigRpDisplayName == null ? 0 : kratosSelfserviceMethodsWebauthnConfigRpDisplayName!.hashCode) +
    (kratosSelfserviceMethodsWebauthnConfigRpIcon == null ? 0 : kratosSelfserviceMethodsWebauthnConfigRpIcon!.hashCode) +
    (kratosSelfserviceMethodsWebauthnConfigRpId == null ? 0 : kratosSelfserviceMethodsWebauthnConfigRpId!.hashCode) +
    (kratosSelfserviceMethodsWebauthnConfigRpOrigin == null ? 0 : kratosSelfserviceMethodsWebauthnConfigRpOrigin!.hashCode) +
    (kratosSelfserviceMethodsWebauthnEnabled == null ? 0 : kratosSelfserviceMethodsWebauthnEnabled!.hashCode) +
    (kratosSessionCookiePersistent == null ? 0 : kratosSessionCookiePersistent!.hashCode) +
    (kratosSessionCookieSameSite == null ? 0 : kratosSessionCookieSameSite!.hashCode) +
    (kratosSessionLifespan == null ? 0 : kratosSessionLifespan!.hashCode) +
    (kratosSessionWhoamiRequiredAal == null ? 0 : kratosSessionWhoamiRequiredAal!.hashCode) +
    (name.hashCode) +
    (production == null ? 0 : production!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'NormalizedProjectRevision[createdAt=$createdAt, hydraOauth2ClientCredentialsDefaultGrantAllowedScope=$hydraOauth2ClientCredentialsDefaultGrantAllowedScope, hydraOauth2GrantJwtIatOptional=$hydraOauth2GrantJwtIatOptional, hydraOauth2GrantJwtJtiOptional=$hydraOauth2GrantJwtJtiOptional, hydraOauth2GrantJwtMaxTtl=$hydraOauth2GrantJwtMaxTtl, hydraOauth2PkceEnforced=$hydraOauth2PkceEnforced, hydraOauth2PkceEnforcedForPublicClients=$hydraOauth2PkceEnforcedForPublicClients, hydraOauth2RefreshTokenHook=$hydraOauth2RefreshTokenHook, hydraOauth2SessionAllowedTopLevelClaims=$hydraOauth2SessionAllowedTopLevelClaims, hydraOauth2SessionExcludeNotBeforeClaim=$hydraOauth2SessionExcludeNotBeforeClaim, hydraOidcDynamicClientRegistrationDefaultScope=$hydraOidcDynamicClientRegistrationDefaultScope, hydraOidcDynamicClientRegistrationEnabled=$hydraOidcDynamicClientRegistrationEnabled, hydraOidcSubjectIdentifiersPairwiseSalt=$hydraOidcSubjectIdentifiersPairwiseSalt, hydraOidcSubjectIdentifiersSupportedTypes=$hydraOidcSubjectIdentifiersSupportedTypes, hydraSecretsCookie=$hydraSecretsCookie, hydraSecretsSystem=$hydraSecretsSystem, hydraServeAdminCorsAllowedOrigins=$hydraServeAdminCorsAllowedOrigins, hydraServeAdminCorsEnabled=$hydraServeAdminCorsEnabled, hydraServeCookiesSameSiteLegacyWorkaround=$hydraServeCookiesSameSiteLegacyWorkaround, hydraServeCookiesSameSiteMode=$hydraServeCookiesSameSiteMode, hydraServePublicCorsAllowedOrigins=$hydraServePublicCorsAllowedOrigins, hydraServePublicCorsEnabled=$hydraServePublicCorsEnabled, hydraStrategiesAccessToken=$hydraStrategiesAccessToken, hydraStrategiesScope=$hydraStrategiesScope, hydraTtlAccessToken=$hydraTtlAccessToken, hydraTtlAuthCode=$hydraTtlAuthCode, hydraTtlIdToken=$hydraTtlIdToken, hydraTtlLoginConsentRequest=$hydraTtlLoginConsentRequest, hydraTtlRefreshToken=$hydraTtlRefreshToken, hydraUrlsConsent=$hydraUrlsConsent, hydraUrlsError=$hydraUrlsError, hydraUrlsLogin=$hydraUrlsLogin, hydraUrlsLogout=$hydraUrlsLogout, hydraUrlsPostLogoutRedirect=$hydraUrlsPostLogoutRedirect, hydraUrlsSelfIssuer=$hydraUrlsSelfIssuer, hydraWebfingerJwksBroadcastKeys=$hydraWebfingerJwksBroadcastKeys, hydraWebfingerOidcDiscoveryAuthUrl=$hydraWebfingerOidcDiscoveryAuthUrl, hydraWebfingerOidcDiscoveryClientRegistrationUrl=$hydraWebfingerOidcDiscoveryClientRegistrationUrl, hydraWebfingerOidcDiscoveryJwksUrl=$hydraWebfingerOidcDiscoveryJwksUrl, hydraWebfingerOidcDiscoverySupportedClaims=$hydraWebfingerOidcDiscoverySupportedClaims, hydraWebfingerOidcDiscoverySupportedScope=$hydraWebfingerOidcDiscoverySupportedScope, hydraWebfingerOidcDiscoveryTokenUrl=$hydraWebfingerOidcDiscoveryTokenUrl, hydraWebfingerOidcDiscoveryUserinfoUrl=$hydraWebfingerOidcDiscoveryUserinfoUrl, id=$id, ketoNamespaceConfiguration=$ketoNamespaceConfiguration, ketoNamespaces=$ketoNamespaces, ketoReadMaxDepth=$ketoReadMaxDepth, kratosCookiesSameSite=$kratosCookiesSameSite, kratosCourierSmtpConnectionUri=$kratosCourierSmtpConnectionUri, kratosCourierSmtpFromAddress=$kratosCourierSmtpFromAddress, kratosCourierSmtpFromName=$kratosCourierSmtpFromName, kratosCourierSmtpHeaders=$kratosCourierSmtpHeaders, kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml=$kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml, kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext=$kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext, kratosCourierTemplatesRecoveryCodeInvalidEmailSubject=$kratosCourierTemplatesRecoveryCodeInvalidEmailSubject, kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml=$kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml, kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext=$kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext, kratosCourierTemplatesRecoveryCodeValidEmailSubject=$kratosCourierTemplatesRecoveryCodeValidEmailSubject, kratosCourierTemplatesRecoveryInvalidEmailBodyHtml=$kratosCourierTemplatesRecoveryInvalidEmailBodyHtml, kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext=$kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext, kratosCourierTemplatesRecoveryInvalidEmailSubject=$kratosCourierTemplatesRecoveryInvalidEmailSubject, kratosCourierTemplatesRecoveryValidEmailBodyHtml=$kratosCourierTemplatesRecoveryValidEmailBodyHtml, kratosCourierTemplatesRecoveryValidEmailBodyPlaintext=$kratosCourierTemplatesRecoveryValidEmailBodyPlaintext, kratosCourierTemplatesRecoveryValidEmailSubject=$kratosCourierTemplatesRecoveryValidEmailSubject, kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml=$kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml, kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext=$kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext, kratosCourierTemplatesVerificationCodeInvalidEmailSubject=$kratosCourierTemplatesVerificationCodeInvalidEmailSubject, kratosCourierTemplatesVerificationCodeValidEmailBodyHtml=$kratosCourierTemplatesVerificationCodeValidEmailBodyHtml, kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext=$kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext, kratosCourierTemplatesVerificationCodeValidEmailSubject=$kratosCourierTemplatesVerificationCodeValidEmailSubject, kratosCourierTemplatesVerificationInvalidEmailBodyHtml=$kratosCourierTemplatesVerificationInvalidEmailBodyHtml, kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext=$kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext, kratosCourierTemplatesVerificationInvalidEmailSubject=$kratosCourierTemplatesVerificationInvalidEmailSubject, kratosCourierTemplatesVerificationValidEmailBodyHtml=$kratosCourierTemplatesVerificationValidEmailBodyHtml, kratosCourierTemplatesVerificationValidEmailBodyPlaintext=$kratosCourierTemplatesVerificationValidEmailBodyPlaintext, kratosCourierTemplatesVerificationValidEmailSubject=$kratosCourierTemplatesVerificationValidEmailSubject, kratosFeatureFlagsCacheableSessions=$kratosFeatureFlagsCacheableSessions, kratosIdentitySchemas=$kratosIdentitySchemas, kratosOauth2ProviderHeaders=$kratosOauth2ProviderHeaders, kratosOauth2ProviderUrl=$kratosOauth2ProviderUrl, kratosSecretsCipher=$kratosSecretsCipher, kratosSecretsCookie=$kratosSecretsCookie, kratosSecretsDefault=$kratosSecretsDefault, kratosSelfserviceAllowedReturnUrls=$kratosSelfserviceAllowedReturnUrls, kratosSelfserviceDefaultBrowserReturnUrl=$kratosSelfserviceDefaultBrowserReturnUrl, kratosSelfserviceFlowsErrorUiUrl=$kratosSelfserviceFlowsErrorUiUrl, kratosSelfserviceFlowsHooks=$kratosSelfserviceFlowsHooks, kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl=$kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl, kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl=$kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl, kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl=$kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl, kratosSelfserviceFlowsLoginLifespan=$kratosSelfserviceFlowsLoginLifespan, kratosSelfserviceFlowsLoginUiUrl=$kratosSelfserviceFlowsLoginUiUrl, kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsRecoveryEnabled=$kratosSelfserviceFlowsRecoveryEnabled, kratosSelfserviceFlowsRecoveryLifespan=$kratosSelfserviceFlowsRecoveryLifespan, kratosSelfserviceFlowsRecoveryUiUrl=$kratosSelfserviceFlowsRecoveryUiUrl, kratosSelfserviceFlowsRecoveryUse=$kratosSelfserviceFlowsRecoveryUse, kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl=$kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl, kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl=$kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl, kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl=$kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl, kratosSelfserviceFlowsRegistrationEnabled=$kratosSelfserviceFlowsRegistrationEnabled, kratosSelfserviceFlowsRegistrationLifespan=$kratosSelfserviceFlowsRegistrationLifespan, kratosSelfserviceFlowsRegistrationUiUrl=$kratosSelfserviceFlowsRegistrationUiUrl, kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl=$kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl, kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl=$kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl, kratosSelfserviceFlowsSettingsLifespan=$kratosSelfserviceFlowsSettingsLifespan, kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge=$kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge, kratosSelfserviceFlowsSettingsRequiredAal=$kratosSelfserviceFlowsSettingsRequiredAal, kratosSelfserviceFlowsSettingsUiUrl=$kratosSelfserviceFlowsSettingsUiUrl, kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl=$kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl, kratosSelfserviceFlowsVerificationEnabled=$kratosSelfserviceFlowsVerificationEnabled, kratosSelfserviceFlowsVerificationLifespan=$kratosSelfserviceFlowsVerificationLifespan, kratosSelfserviceFlowsVerificationUiUrl=$kratosSelfserviceFlowsVerificationUiUrl, kratosSelfserviceFlowsVerificationUse=$kratosSelfserviceFlowsVerificationUse, kratosSelfserviceMethodsCodeConfigLifespan=$kratosSelfserviceMethodsCodeConfigLifespan, kratosSelfserviceMethodsCodeEnabled=$kratosSelfserviceMethodsCodeEnabled, kratosSelfserviceMethodsLinkConfigBaseUrl=$kratosSelfserviceMethodsLinkConfigBaseUrl, kratosSelfserviceMethodsLinkConfigLifespan=$kratosSelfserviceMethodsLinkConfigLifespan, kratosSelfserviceMethodsLinkEnabled=$kratosSelfserviceMethodsLinkEnabled, kratosSelfserviceMethodsLookupSecretEnabled=$kratosSelfserviceMethodsLookupSecretEnabled, kratosSelfserviceMethodsOidcConfigBaseRedirectUri=$kratosSelfserviceMethodsOidcConfigBaseRedirectUri, kratosSelfserviceMethodsOidcConfigProviders=$kratosSelfserviceMethodsOidcConfigProviders, kratosSelfserviceMethodsOidcEnabled=$kratosSelfserviceMethodsOidcEnabled, kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled=$kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled, kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled=$kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled, kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors=$kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors, kratosSelfserviceMethodsPasswordConfigMaxBreaches=$kratosSelfserviceMethodsPasswordConfigMaxBreaches, kratosSelfserviceMethodsPasswordConfigMinPasswordLength=$kratosSelfserviceMethodsPasswordConfigMinPasswordLength, kratosSelfserviceMethodsPasswordEnabled=$kratosSelfserviceMethodsPasswordEnabled, kratosSelfserviceMethodsProfileEnabled=$kratosSelfserviceMethodsProfileEnabled, kratosSelfserviceMethodsTotpConfigIssuer=$kratosSelfserviceMethodsTotpConfigIssuer, kratosSelfserviceMethodsTotpEnabled=$kratosSelfserviceMethodsTotpEnabled, kratosSelfserviceMethodsWebauthnConfigPasswordless=$kratosSelfserviceMethodsWebauthnConfigPasswordless, kratosSelfserviceMethodsWebauthnConfigRpDisplayName=$kratosSelfserviceMethodsWebauthnConfigRpDisplayName, kratosSelfserviceMethodsWebauthnConfigRpIcon=$kratosSelfserviceMethodsWebauthnConfigRpIcon, kratosSelfserviceMethodsWebauthnConfigRpId=$kratosSelfserviceMethodsWebauthnConfigRpId, kratosSelfserviceMethodsWebauthnConfigRpOrigin=$kratosSelfserviceMethodsWebauthnConfigRpOrigin, kratosSelfserviceMethodsWebauthnEnabled=$kratosSelfserviceMethodsWebauthnEnabled, kratosSessionCookiePersistent=$kratosSessionCookiePersistent, kratosSessionCookieSameSite=$kratosSessionCookieSameSite, kratosSessionLifespan=$kratosSessionLifespan, kratosSessionWhoamiRequiredAal=$kratosSessionWhoamiRequiredAal, name=$name, production=$production, projectId=$projectId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.hydraOauth2ClientCredentialsDefaultGrantAllowedScope != null) {
      json[r'hydra_oauth2_client_credentials_default_grant_allowed_scope'] = this.hydraOauth2ClientCredentialsDefaultGrantAllowedScope;
    } else {
      json[r'hydra_oauth2_client_credentials_default_grant_allowed_scope'] = null;
    }
    if (this.hydraOauth2GrantJwtIatOptional != null) {
      json[r'hydra_oauth2_grant_jwt_iat_optional'] = this.hydraOauth2GrantJwtIatOptional;
    } else {
      json[r'hydra_oauth2_grant_jwt_iat_optional'] = null;
    }
    if (this.hydraOauth2GrantJwtJtiOptional != null) {
      json[r'hydra_oauth2_grant_jwt_jti_optional'] = this.hydraOauth2GrantJwtJtiOptional;
    } else {
      json[r'hydra_oauth2_grant_jwt_jti_optional'] = null;
    }
      json[r'hydra_oauth2_grant_jwt_max_ttl'] = this.hydraOauth2GrantJwtMaxTtl;
    if (this.hydraOauth2PkceEnforced != null) {
      json[r'hydra_oauth2_pkce_enforced'] = this.hydraOauth2PkceEnforced;
    } else {
      json[r'hydra_oauth2_pkce_enforced'] = null;
    }
    if (this.hydraOauth2PkceEnforcedForPublicClients != null) {
      json[r'hydra_oauth2_pkce_enforced_for_public_clients'] = this.hydraOauth2PkceEnforcedForPublicClients;
    } else {
      json[r'hydra_oauth2_pkce_enforced_for_public_clients'] = null;
    }
    if (this.hydraOauth2RefreshTokenHook != null) {
      json[r'hydra_oauth2_refresh_token_hook'] = this.hydraOauth2RefreshTokenHook;
    } else {
      json[r'hydra_oauth2_refresh_token_hook'] = null;
    }
      json[r'hydra_oauth2_session_allowed_top_level_claims'] = this.hydraOauth2SessionAllowedTopLevelClaims;
    if (this.hydraOauth2SessionExcludeNotBeforeClaim != null) {
      json[r'hydra_oauth2_session_exclude_not_before_claim'] = this.hydraOauth2SessionExcludeNotBeforeClaim;
    } else {
      json[r'hydra_oauth2_session_exclude_not_before_claim'] = null;
    }
      json[r'hydra_oidc_dynamic_client_registration_default_scope'] = this.hydraOidcDynamicClientRegistrationDefaultScope;
    if (this.hydraOidcDynamicClientRegistrationEnabled != null) {
      json[r'hydra_oidc_dynamic_client_registration_enabled'] = this.hydraOidcDynamicClientRegistrationEnabled;
    } else {
      json[r'hydra_oidc_dynamic_client_registration_enabled'] = null;
    }
    if (this.hydraOidcSubjectIdentifiersPairwiseSalt != null) {
      json[r'hydra_oidc_subject_identifiers_pairwise_salt'] = this.hydraOidcSubjectIdentifiersPairwiseSalt;
    } else {
      json[r'hydra_oidc_subject_identifiers_pairwise_salt'] = null;
    }
      json[r'hydra_oidc_subject_identifiers_supported_types'] = this.hydraOidcSubjectIdentifiersSupportedTypes;
      json[r'hydra_secrets_cookie'] = this.hydraSecretsCookie;
      json[r'hydra_secrets_system'] = this.hydraSecretsSystem;
      json[r'hydra_serve_admin_cors_allowed_origins'] = this.hydraServeAdminCorsAllowedOrigins;
    if (this.hydraServeAdminCorsEnabled != null) {
      json[r'hydra_serve_admin_cors_enabled'] = this.hydraServeAdminCorsEnabled;
    } else {
      json[r'hydra_serve_admin_cors_enabled'] = null;
    }
    if (this.hydraServeCookiesSameSiteLegacyWorkaround != null) {
      json[r'hydra_serve_cookies_same_site_legacy_workaround'] = this.hydraServeCookiesSameSiteLegacyWorkaround;
    } else {
      json[r'hydra_serve_cookies_same_site_legacy_workaround'] = null;
    }
    if (this.hydraServeCookiesSameSiteMode != null) {
      json[r'hydra_serve_cookies_same_site_mode'] = this.hydraServeCookiesSameSiteMode;
    } else {
      json[r'hydra_serve_cookies_same_site_mode'] = null;
    }
      json[r'hydra_serve_public_cors_allowed_origins'] = this.hydraServePublicCorsAllowedOrigins;
    if (this.hydraServePublicCorsEnabled != null) {
      json[r'hydra_serve_public_cors_enabled'] = this.hydraServePublicCorsEnabled;
    } else {
      json[r'hydra_serve_public_cors_enabled'] = null;
    }
      json[r'hydra_strategies_access_token'] = this.hydraStrategiesAccessToken;
      json[r'hydra_strategies_scope'] = this.hydraStrategiesScope;
      json[r'hydra_ttl_access_token'] = this.hydraTtlAccessToken;
      json[r'hydra_ttl_auth_code'] = this.hydraTtlAuthCode;
      json[r'hydra_ttl_id_token'] = this.hydraTtlIdToken;
      json[r'hydra_ttl_login_consent_request'] = this.hydraTtlLoginConsentRequest;
      json[r'hydra_ttl_refresh_token'] = this.hydraTtlRefreshToken;
    if (this.hydraUrlsConsent != null) {
      json[r'hydra_urls_consent'] = this.hydraUrlsConsent;
    } else {
      json[r'hydra_urls_consent'] = null;
    }
    if (this.hydraUrlsError != null) {
      json[r'hydra_urls_error'] = this.hydraUrlsError;
    } else {
      json[r'hydra_urls_error'] = null;
    }
    if (this.hydraUrlsLogin != null) {
      json[r'hydra_urls_login'] = this.hydraUrlsLogin;
    } else {
      json[r'hydra_urls_login'] = null;
    }
    if (this.hydraUrlsLogout != null) {
      json[r'hydra_urls_logout'] = this.hydraUrlsLogout;
    } else {
      json[r'hydra_urls_logout'] = null;
    }
    if (this.hydraUrlsPostLogoutRedirect != null) {
      json[r'hydra_urls_post_logout_redirect'] = this.hydraUrlsPostLogoutRedirect;
    } else {
      json[r'hydra_urls_post_logout_redirect'] = null;
    }
    if (this.hydraUrlsSelfIssuer != null) {
      json[r'hydra_urls_self_issuer'] = this.hydraUrlsSelfIssuer;
    } else {
      json[r'hydra_urls_self_issuer'] = null;
    }
      json[r'hydra_webfinger_jwks_broadcast_keys'] = this.hydraWebfingerJwksBroadcastKeys;
    if (this.hydraWebfingerOidcDiscoveryAuthUrl != null) {
      json[r'hydra_webfinger_oidc_discovery_auth_url'] = this.hydraWebfingerOidcDiscoveryAuthUrl;
    } else {
      json[r'hydra_webfinger_oidc_discovery_auth_url'] = null;
    }
    if (this.hydraWebfingerOidcDiscoveryClientRegistrationUrl != null) {
      json[r'hydra_webfinger_oidc_discovery_client_registration_url'] = this.hydraWebfingerOidcDiscoveryClientRegistrationUrl;
    } else {
      json[r'hydra_webfinger_oidc_discovery_client_registration_url'] = null;
    }
    if (this.hydraWebfingerOidcDiscoveryJwksUrl != null) {
      json[r'hydra_webfinger_oidc_discovery_jwks_url'] = this.hydraWebfingerOidcDiscoveryJwksUrl;
    } else {
      json[r'hydra_webfinger_oidc_discovery_jwks_url'] = null;
    }
      json[r'hydra_webfinger_oidc_discovery_supported_claims'] = this.hydraWebfingerOidcDiscoverySupportedClaims;
      json[r'hydra_webfinger_oidc_discovery_supported_scope'] = this.hydraWebfingerOidcDiscoverySupportedScope;
    if (this.hydraWebfingerOidcDiscoveryTokenUrl != null) {
      json[r'hydra_webfinger_oidc_discovery_token_url'] = this.hydraWebfingerOidcDiscoveryTokenUrl;
    } else {
      json[r'hydra_webfinger_oidc_discovery_token_url'] = null;
    }
    if (this.hydraWebfingerOidcDiscoveryUserinfoUrl != null) {
      json[r'hydra_webfinger_oidc_discovery_userinfo_url'] = this.hydraWebfingerOidcDiscoveryUserinfoUrl;
    } else {
      json[r'hydra_webfinger_oidc_discovery_userinfo_url'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ketoNamespaceConfiguration != null) {
      json[r'keto_namespace_configuration'] = this.ketoNamespaceConfiguration;
    } else {
      json[r'keto_namespace_configuration'] = null;
    }
      json[r'keto_namespaces'] = this.ketoNamespaces;
    if (this.ketoReadMaxDepth != null) {
      json[r'keto_read_max_depth'] = this.ketoReadMaxDepth;
    } else {
      json[r'keto_read_max_depth'] = null;
    }
    if (this.kratosCookiesSameSite != null) {
      json[r'kratos_cookies_same_site'] = this.kratosCookiesSameSite;
    } else {
      json[r'kratos_cookies_same_site'] = null;
    }
    if (this.kratosCourierSmtpConnectionUri != null) {
      json[r'kratos_courier_smtp_connection_uri'] = this.kratosCourierSmtpConnectionUri;
    } else {
      json[r'kratos_courier_smtp_connection_uri'] = null;
    }
    if (this.kratosCourierSmtpFromAddress != null) {
      json[r'kratos_courier_smtp_from_address'] = this.kratosCourierSmtpFromAddress;
    } else {
      json[r'kratos_courier_smtp_from_address'] = null;
    }
    if (this.kratosCourierSmtpFromName != null) {
      json[r'kratos_courier_smtp_from_name'] = this.kratosCourierSmtpFromName;
    } else {
      json[r'kratos_courier_smtp_from_name'] = null;
    }
    if (this.kratosCourierSmtpHeaders != null) {
      json[r'kratos_courier_smtp_headers'] = this.kratosCourierSmtpHeaders;
    } else {
      json[r'kratos_courier_smtp_headers'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_recovery_code_invalid_email_body_html'] = this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_recovery_code_invalid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_recovery_code_invalid_email_body_plaintext'] = this.kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_recovery_code_invalid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeInvalidEmailSubject != null) {
      json[r'kratos_courier_templates_recovery_code_invalid_email_subject'] = this.kratosCourierTemplatesRecoveryCodeInvalidEmailSubject;
    } else {
      json[r'kratos_courier_templates_recovery_code_invalid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_recovery_code_valid_email_body_html'] = this.kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_recovery_code_valid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_recovery_code_valid_email_body_plaintext'] = this.kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_recovery_code_valid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryCodeValidEmailSubject != null) {
      json[r'kratos_courier_templates_recovery_code_valid_email_subject'] = this.kratosCourierTemplatesRecoveryCodeValidEmailSubject;
    } else {
      json[r'kratos_courier_templates_recovery_code_valid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryInvalidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_recovery_invalid_email_body_html'] = this.kratosCourierTemplatesRecoveryInvalidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_recovery_invalid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_recovery_invalid_email_body_plaintext'] = this.kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_recovery_invalid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryInvalidEmailSubject != null) {
      json[r'kratos_courier_templates_recovery_invalid_email_subject'] = this.kratosCourierTemplatesRecoveryInvalidEmailSubject;
    } else {
      json[r'kratos_courier_templates_recovery_invalid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryValidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_recovery_valid_email_body_html'] = this.kratosCourierTemplatesRecoveryValidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_recovery_valid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryValidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_recovery_valid_email_body_plaintext'] = this.kratosCourierTemplatesRecoveryValidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_recovery_valid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesRecoveryValidEmailSubject != null) {
      json[r'kratos_courier_templates_recovery_valid_email_subject'] = this.kratosCourierTemplatesRecoveryValidEmailSubject;
    } else {
      json[r'kratos_courier_templates_recovery_valid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_verification_code_invalid_email_body_html'] = this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_verification_code_invalid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_verification_code_invalid_email_body_plaintext'] = this.kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_verification_code_invalid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeInvalidEmailSubject != null) {
      json[r'kratos_courier_templates_verification_code_invalid_email_subject'] = this.kratosCourierTemplatesVerificationCodeInvalidEmailSubject;
    } else {
      json[r'kratos_courier_templates_verification_code_invalid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeValidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_verification_code_valid_email_body_html'] = this.kratosCourierTemplatesVerificationCodeValidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_verification_code_valid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_verification_code_valid_email_body_plaintext'] = this.kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_verification_code_valid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesVerificationCodeValidEmailSubject != null) {
      json[r'kratos_courier_templates_verification_code_valid_email_subject'] = this.kratosCourierTemplatesVerificationCodeValidEmailSubject;
    } else {
      json[r'kratos_courier_templates_verification_code_valid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesVerificationInvalidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_verification_invalid_email_body_html'] = this.kratosCourierTemplatesVerificationInvalidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_verification_invalid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_verification_invalid_email_body_plaintext'] = this.kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_verification_invalid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesVerificationInvalidEmailSubject != null) {
      json[r'kratos_courier_templates_verification_invalid_email_subject'] = this.kratosCourierTemplatesVerificationInvalidEmailSubject;
    } else {
      json[r'kratos_courier_templates_verification_invalid_email_subject'] = null;
    }
    if (this.kratosCourierTemplatesVerificationValidEmailBodyHtml != null) {
      json[r'kratos_courier_templates_verification_valid_email_body_html'] = this.kratosCourierTemplatesVerificationValidEmailBodyHtml;
    } else {
      json[r'kratos_courier_templates_verification_valid_email_body_html'] = null;
    }
    if (this.kratosCourierTemplatesVerificationValidEmailBodyPlaintext != null) {
      json[r'kratos_courier_templates_verification_valid_email_body_plaintext'] = this.kratosCourierTemplatesVerificationValidEmailBodyPlaintext;
    } else {
      json[r'kratos_courier_templates_verification_valid_email_body_plaintext'] = null;
    }
    if (this.kratosCourierTemplatesVerificationValidEmailSubject != null) {
      json[r'kratos_courier_templates_verification_valid_email_subject'] = this.kratosCourierTemplatesVerificationValidEmailSubject;
    } else {
      json[r'kratos_courier_templates_verification_valid_email_subject'] = null;
    }
    if (this.kratosFeatureFlagsCacheableSessions != null) {
      json[r'kratos_feature_flags_cacheable_sessions'] = this.kratosFeatureFlagsCacheableSessions;
    } else {
      json[r'kratos_feature_flags_cacheable_sessions'] = null;
    }
      json[r'kratos_identity_schemas'] = this.kratosIdentitySchemas;
    if (this.kratosOauth2ProviderHeaders != null) {
      json[r'kratos_oauth2_provider_headers'] = this.kratosOauth2ProviderHeaders;
    } else {
      json[r'kratos_oauth2_provider_headers'] = null;
    }
    if (this.kratosOauth2ProviderUrl != null) {
      json[r'kratos_oauth2_provider_url'] = this.kratosOauth2ProviderUrl;
    } else {
      json[r'kratos_oauth2_provider_url'] = null;
    }
      json[r'kratos_secrets_cipher'] = this.kratosSecretsCipher;
      json[r'kratos_secrets_cookie'] = this.kratosSecretsCookie;
      json[r'kratos_secrets_default'] = this.kratosSecretsDefault;
      json[r'kratos_selfservice_allowed_return_urls'] = this.kratosSelfserviceAllowedReturnUrls;
    if (this.kratosSelfserviceDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_default_browser_return_url'] = this.kratosSelfserviceDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsErrorUiUrl != null) {
      json[r'kratos_selfservice_flows_error_ui_url'] = this.kratosSelfserviceFlowsErrorUiUrl;
    } else {
      json[r'kratos_selfservice_flows_error_ui_url'] = null;
    }
      json[r'kratos_selfservice_flows_hooks'] = this.kratosSelfserviceFlowsHooks;
    if (this.kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_login_after_default_browser_return_url'] = this.kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_login_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_login_after_oidc_default_browser_return_url'] = this.kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_login_after_oidc_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_login_after_password_default_browser_return_url'] = this.kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_login_after_password_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_login_after_webauthn_default_browser_return_url'] = this.kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_login_after_webauthn_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsLoginLifespan != null) {
      json[r'kratos_selfservice_flows_login_lifespan'] = this.kratosSelfserviceFlowsLoginLifespan;
    } else {
      json[r'kratos_selfservice_flows_login_lifespan'] = null;
    }
    if (this.kratosSelfserviceFlowsLoginUiUrl != null) {
      json[r'kratos_selfservice_flows_login_ui_url'] = this.kratosSelfserviceFlowsLoginUiUrl;
    } else {
      json[r'kratos_selfservice_flows_login_ui_url'] = null;
    }
    if (this.kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_logout_after_default_browser_return_url'] = this.kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_logout_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_recovery_after_default_browser_return_url'] = this.kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_recovery_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRecoveryEnabled != null) {
      json[r'kratos_selfservice_flows_recovery_enabled'] = this.kratosSelfserviceFlowsRecoveryEnabled;
    } else {
      json[r'kratos_selfservice_flows_recovery_enabled'] = null;
    }
    if (this.kratosSelfserviceFlowsRecoveryLifespan != null) {
      json[r'kratos_selfservice_flows_recovery_lifespan'] = this.kratosSelfserviceFlowsRecoveryLifespan;
    } else {
      json[r'kratos_selfservice_flows_recovery_lifespan'] = null;
    }
    if (this.kratosSelfserviceFlowsRecoveryUiUrl != null) {
      json[r'kratos_selfservice_flows_recovery_ui_url'] = this.kratosSelfserviceFlowsRecoveryUiUrl;
    } else {
      json[r'kratos_selfservice_flows_recovery_ui_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRecoveryUse != null) {
      json[r'kratos_selfservice_flows_recovery_use'] = this.kratosSelfserviceFlowsRecoveryUse;
    } else {
      json[r'kratos_selfservice_flows_recovery_use'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_registration_after_default_browser_return_url'] = this.kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_registration_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_registration_after_oidc_default_browser_return_url'] = this.kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_registration_after_oidc_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_registration_after_password_default_browser_return_url'] = this.kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_registration_after_password_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_registration_after_webauthn_default_browser_return_url'] = this.kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_registration_after_webauthn_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationEnabled != null) {
      json[r'kratos_selfservice_flows_registration_enabled'] = this.kratosSelfserviceFlowsRegistrationEnabled;
    } else {
      json[r'kratos_selfservice_flows_registration_enabled'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationLifespan != null) {
      json[r'kratos_selfservice_flows_registration_lifespan'] = this.kratosSelfserviceFlowsRegistrationLifespan;
    } else {
      json[r'kratos_selfservice_flows_registration_lifespan'] = null;
    }
    if (this.kratosSelfserviceFlowsRegistrationUiUrl != null) {
      json[r'kratos_selfservice_flows_registration_ui_url'] = this.kratosSelfserviceFlowsRegistrationUiUrl;
    } else {
      json[r'kratos_selfservice_flows_registration_ui_url'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_settings_after_default_browser_return_url'] = this.kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_settings_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_settings_after_password_default_browser_return_url'] = this.kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_settings_after_password_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_settings_after_profile_default_browser_return_url'] = this.kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_settings_after_profile_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsLifespan != null) {
      json[r'kratos_selfservice_flows_settings_lifespan'] = this.kratosSelfserviceFlowsSettingsLifespan;
    } else {
      json[r'kratos_selfservice_flows_settings_lifespan'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge != null) {
      json[r'kratos_selfservice_flows_settings_privileged_session_max_age'] = this.kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge;
    } else {
      json[r'kratos_selfservice_flows_settings_privileged_session_max_age'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsRequiredAal != null) {
      json[r'kratos_selfservice_flows_settings_required_aal'] = this.kratosSelfserviceFlowsSettingsRequiredAal;
    } else {
      json[r'kratos_selfservice_flows_settings_required_aal'] = null;
    }
    if (this.kratosSelfserviceFlowsSettingsUiUrl != null) {
      json[r'kratos_selfservice_flows_settings_ui_url'] = this.kratosSelfserviceFlowsSettingsUiUrl;
    } else {
      json[r'kratos_selfservice_flows_settings_ui_url'] = null;
    }
    if (this.kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl != null) {
      json[r'kratos_selfservice_flows_verification_after_default_browser_return_url'] = this.kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl;
    } else {
      json[r'kratos_selfservice_flows_verification_after_default_browser_return_url'] = null;
    }
    if (this.kratosSelfserviceFlowsVerificationEnabled != null) {
      json[r'kratos_selfservice_flows_verification_enabled'] = this.kratosSelfserviceFlowsVerificationEnabled;
    } else {
      json[r'kratos_selfservice_flows_verification_enabled'] = null;
    }
    if (this.kratosSelfserviceFlowsVerificationLifespan != null) {
      json[r'kratos_selfservice_flows_verification_lifespan'] = this.kratosSelfserviceFlowsVerificationLifespan;
    } else {
      json[r'kratos_selfservice_flows_verification_lifespan'] = null;
    }
    if (this.kratosSelfserviceFlowsVerificationUiUrl != null) {
      json[r'kratos_selfservice_flows_verification_ui_url'] = this.kratosSelfserviceFlowsVerificationUiUrl;
    } else {
      json[r'kratos_selfservice_flows_verification_ui_url'] = null;
    }
    if (this.kratosSelfserviceFlowsVerificationUse != null) {
      json[r'kratos_selfservice_flows_verification_use'] = this.kratosSelfserviceFlowsVerificationUse;
    } else {
      json[r'kratos_selfservice_flows_verification_use'] = null;
    }
    if (this.kratosSelfserviceMethodsCodeConfigLifespan != null) {
      json[r'kratos_selfservice_methods_code_config_lifespan'] = this.kratosSelfserviceMethodsCodeConfigLifespan;
    } else {
      json[r'kratos_selfservice_methods_code_config_lifespan'] = null;
    }
    if (this.kratosSelfserviceMethodsCodeEnabled != null) {
      json[r'kratos_selfservice_methods_code_enabled'] = this.kratosSelfserviceMethodsCodeEnabled;
    } else {
      json[r'kratos_selfservice_methods_code_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsLinkConfigBaseUrl != null) {
      json[r'kratos_selfservice_methods_link_config_base_url'] = this.kratosSelfserviceMethodsLinkConfigBaseUrl;
    } else {
      json[r'kratos_selfservice_methods_link_config_base_url'] = null;
    }
    if (this.kratosSelfserviceMethodsLinkConfigLifespan != null) {
      json[r'kratos_selfservice_methods_link_config_lifespan'] = this.kratosSelfserviceMethodsLinkConfigLifespan;
    } else {
      json[r'kratos_selfservice_methods_link_config_lifespan'] = null;
    }
    if (this.kratosSelfserviceMethodsLinkEnabled != null) {
      json[r'kratos_selfservice_methods_link_enabled'] = this.kratosSelfserviceMethodsLinkEnabled;
    } else {
      json[r'kratos_selfservice_methods_link_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsLookupSecretEnabled != null) {
      json[r'kratos_selfservice_methods_lookup_secret_enabled'] = this.kratosSelfserviceMethodsLookupSecretEnabled;
    } else {
      json[r'kratos_selfservice_methods_lookup_secret_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsOidcConfigBaseRedirectUri != null) {
      json[r'kratos_selfservice_methods_oidc_config_base_redirect_uri'] = this.kratosSelfserviceMethodsOidcConfigBaseRedirectUri;
    } else {
      json[r'kratos_selfservice_methods_oidc_config_base_redirect_uri'] = null;
    }
      json[r'kratos_selfservice_methods_oidc_config_providers'] = this.kratosSelfserviceMethodsOidcConfigProviders;
    if (this.kratosSelfserviceMethodsOidcEnabled != null) {
      json[r'kratos_selfservice_methods_oidc_enabled'] = this.kratosSelfserviceMethodsOidcEnabled;
    } else {
      json[r'kratos_selfservice_methods_oidc_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled != null) {
      json[r'kratos_selfservice_methods_password_config_haveibeenpwned_enabled'] = this.kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled;
    } else {
      json[r'kratos_selfservice_methods_password_config_haveibeenpwned_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled != null) {
      json[r'kratos_selfservice_methods_password_config_identifier_similarity_check_enabled'] = this.kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled;
    } else {
      json[r'kratos_selfservice_methods_password_config_identifier_similarity_check_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors != null) {
      json[r'kratos_selfservice_methods_password_config_ignore_network_errors'] = this.kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors;
    } else {
      json[r'kratos_selfservice_methods_password_config_ignore_network_errors'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordConfigMaxBreaches != null) {
      json[r'kratos_selfservice_methods_password_config_max_breaches'] = this.kratosSelfserviceMethodsPasswordConfigMaxBreaches;
    } else {
      json[r'kratos_selfservice_methods_password_config_max_breaches'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordConfigMinPasswordLength != null) {
      json[r'kratos_selfservice_methods_password_config_min_password_length'] = this.kratosSelfserviceMethodsPasswordConfigMinPasswordLength;
    } else {
      json[r'kratos_selfservice_methods_password_config_min_password_length'] = null;
    }
    if (this.kratosSelfserviceMethodsPasswordEnabled != null) {
      json[r'kratos_selfservice_methods_password_enabled'] = this.kratosSelfserviceMethodsPasswordEnabled;
    } else {
      json[r'kratos_selfservice_methods_password_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsProfileEnabled != null) {
      json[r'kratos_selfservice_methods_profile_enabled'] = this.kratosSelfserviceMethodsProfileEnabled;
    } else {
      json[r'kratos_selfservice_methods_profile_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsTotpConfigIssuer != null) {
      json[r'kratos_selfservice_methods_totp_config_issuer'] = this.kratosSelfserviceMethodsTotpConfigIssuer;
    } else {
      json[r'kratos_selfservice_methods_totp_config_issuer'] = null;
    }
    if (this.kratosSelfserviceMethodsTotpEnabled != null) {
      json[r'kratos_selfservice_methods_totp_enabled'] = this.kratosSelfserviceMethodsTotpEnabled;
    } else {
      json[r'kratos_selfservice_methods_totp_enabled'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnConfigPasswordless != null) {
      json[r'kratos_selfservice_methods_webauthn_config_passwordless'] = this.kratosSelfserviceMethodsWebauthnConfigPasswordless;
    } else {
      json[r'kratos_selfservice_methods_webauthn_config_passwordless'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnConfigRpDisplayName != null) {
      json[r'kratos_selfservice_methods_webauthn_config_rp_display_name'] = this.kratosSelfserviceMethodsWebauthnConfigRpDisplayName;
    } else {
      json[r'kratos_selfservice_methods_webauthn_config_rp_display_name'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnConfigRpIcon != null) {
      json[r'kratos_selfservice_methods_webauthn_config_rp_icon'] = this.kratosSelfserviceMethodsWebauthnConfigRpIcon;
    } else {
      json[r'kratos_selfservice_methods_webauthn_config_rp_icon'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnConfigRpId != null) {
      json[r'kratos_selfservice_methods_webauthn_config_rp_id'] = this.kratosSelfserviceMethodsWebauthnConfigRpId;
    } else {
      json[r'kratos_selfservice_methods_webauthn_config_rp_id'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnConfigRpOrigin != null) {
      json[r'kratos_selfservice_methods_webauthn_config_rp_origin'] = this.kratosSelfserviceMethodsWebauthnConfigRpOrigin;
    } else {
      json[r'kratos_selfservice_methods_webauthn_config_rp_origin'] = null;
    }
    if (this.kratosSelfserviceMethodsWebauthnEnabled != null) {
      json[r'kratos_selfservice_methods_webauthn_enabled'] = this.kratosSelfserviceMethodsWebauthnEnabled;
    } else {
      json[r'kratos_selfservice_methods_webauthn_enabled'] = null;
    }
    if (this.kratosSessionCookiePersistent != null) {
      json[r'kratos_session_cookie_persistent'] = this.kratosSessionCookiePersistent;
    } else {
      json[r'kratos_session_cookie_persistent'] = null;
    }
    if (this.kratosSessionCookieSameSite != null) {
      json[r'kratos_session_cookie_same_site'] = this.kratosSessionCookieSameSite;
    } else {
      json[r'kratos_session_cookie_same_site'] = null;
    }
    if (this.kratosSessionLifespan != null) {
      json[r'kratos_session_lifespan'] = this.kratosSessionLifespan;
    } else {
      json[r'kratos_session_lifespan'] = null;
    }
    if (this.kratosSessionWhoamiRequiredAal != null) {
      json[r'kratos_session_whoami_required_aal'] = this.kratosSessionWhoamiRequiredAal;
    } else {
      json[r'kratos_session_whoami_required_aal'] = null;
    }
      json[r'name'] = this.name;
    if (this.production != null) {
      json[r'production'] = this.production;
    } else {
      json[r'production'] = null;
    }
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [NormalizedProjectRevision] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NormalizedProjectRevision? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NormalizedProjectRevision[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NormalizedProjectRevision[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NormalizedProjectRevision(
        createdAt: mapDateTime(json, r'created_at', ''),
        hydraOauth2ClientCredentialsDefaultGrantAllowedScope: mapValueOfType<bool>(json, r'hydra_oauth2_client_credentials_default_grant_allowed_scope'),
        hydraOauth2GrantJwtIatOptional: mapValueOfType<bool>(json, r'hydra_oauth2_grant_jwt_iat_optional'),
        hydraOauth2GrantJwtJtiOptional: mapValueOfType<bool>(json, r'hydra_oauth2_grant_jwt_jti_optional'),
        hydraOauth2GrantJwtMaxTtl: mapValueOfType<String>(json, r'hydra_oauth2_grant_jwt_max_ttl') ?? '720h',
        hydraOauth2PkceEnforced: mapValueOfType<bool>(json, r'hydra_oauth2_pkce_enforced'),
        hydraOauth2PkceEnforcedForPublicClients: mapValueOfType<bool>(json, r'hydra_oauth2_pkce_enforced_for_public_clients'),
        hydraOauth2RefreshTokenHook: mapValueOfType<String>(json, r'hydra_oauth2_refresh_token_hook'),
        hydraOauth2SessionAllowedTopLevelClaims: json[r'hydra_oauth2_session_allowed_top_level_claims'] is List
            ? (json[r'hydra_oauth2_session_allowed_top_level_claims'] as List).cast<String>()
            : const [],
        hydraOauth2SessionExcludeNotBeforeClaim: mapValueOfType<bool>(json, r'hydra_oauth2_session_exclude_not_before_claim'),
        hydraOidcDynamicClientRegistrationDefaultScope: json[r'hydra_oidc_dynamic_client_registration_default_scope'] is List
            ? (json[r'hydra_oidc_dynamic_client_registration_default_scope'] as List).cast<String>()
            : const [],
        hydraOidcDynamicClientRegistrationEnabled: mapValueOfType<bool>(json, r'hydra_oidc_dynamic_client_registration_enabled'),
        hydraOidcSubjectIdentifiersPairwiseSalt: mapValueOfType<String>(json, r'hydra_oidc_subject_identifiers_pairwise_salt'),
        hydraOidcSubjectIdentifiersSupportedTypes: json[r'hydra_oidc_subject_identifiers_supported_types'] is List
            ? (json[r'hydra_oidc_subject_identifiers_supported_types'] as List).cast<String>()
            : const [],
        hydraSecretsCookie: json[r'hydra_secrets_cookie'] is List
            ? (json[r'hydra_secrets_cookie'] as List).cast<String>()
            : const [],
        hydraSecretsSystem: json[r'hydra_secrets_system'] is List
            ? (json[r'hydra_secrets_system'] as List).cast<String>()
            : const [],
        hydraServeAdminCorsAllowedOrigins: json[r'hydra_serve_admin_cors_allowed_origins'] is List
            ? (json[r'hydra_serve_admin_cors_allowed_origins'] as List).cast<String>()
            : const [],
        hydraServeAdminCorsEnabled: mapValueOfType<bool>(json, r'hydra_serve_admin_cors_enabled'),
        hydraServeCookiesSameSiteLegacyWorkaround: mapValueOfType<bool>(json, r'hydra_serve_cookies_same_site_legacy_workaround'),
        hydraServeCookiesSameSiteMode: mapValueOfType<String>(json, r'hydra_serve_cookies_same_site_mode'),
        hydraServePublicCorsAllowedOrigins: json[r'hydra_serve_public_cors_allowed_origins'] is List
            ? (json[r'hydra_serve_public_cors_allowed_origins'] as List).cast<String>()
            : const [],
        hydraServePublicCorsEnabled: mapValueOfType<bool>(json, r'hydra_serve_public_cors_enabled'),
        hydraStrategiesAccessToken: NormalizedProjectRevisionHydraStrategiesAccessTokenEnum.fromJson(json[r'hydra_strategies_access_token']) ?? 'opaque',
        hydraStrategiesScope: NormalizedProjectRevisionHydraStrategiesScopeEnum.fromJson(json[r'hydra_strategies_scope']) ?? 'wildcard',
        hydraTtlAccessToken: mapValueOfType<String>(json, r'hydra_ttl_access_token') ?? '30m',
        hydraTtlAuthCode: mapValueOfType<String>(json, r'hydra_ttl_auth_code') ?? '720h',
        hydraTtlIdToken: mapValueOfType<String>(json, r'hydra_ttl_id_token') ?? '30m',
        hydraTtlLoginConsentRequest: mapValueOfType<String>(json, r'hydra_ttl_login_consent_request') ?? '30m',
        hydraTtlRefreshToken: mapValueOfType<String>(json, r'hydra_ttl_refresh_token') ?? '720h',
        hydraUrlsConsent: mapValueOfType<String>(json, r'hydra_urls_consent'),
        hydraUrlsError: mapValueOfType<String>(json, r'hydra_urls_error'),
        hydraUrlsLogin: mapValueOfType<String>(json, r'hydra_urls_login'),
        hydraUrlsLogout: mapValueOfType<String>(json, r'hydra_urls_logout'),
        hydraUrlsPostLogoutRedirect: mapValueOfType<String>(json, r'hydra_urls_post_logout_redirect'),
        hydraUrlsSelfIssuer: mapValueOfType<String>(json, r'hydra_urls_self_issuer'),
        hydraWebfingerJwksBroadcastKeys: json[r'hydra_webfinger_jwks_broadcast_keys'] is List
            ? (json[r'hydra_webfinger_jwks_broadcast_keys'] as List).cast<String>()
            : const [],
        hydraWebfingerOidcDiscoveryAuthUrl: mapValueOfType<String>(json, r'hydra_webfinger_oidc_discovery_auth_url'),
        hydraWebfingerOidcDiscoveryClientRegistrationUrl: mapValueOfType<String>(json, r'hydra_webfinger_oidc_discovery_client_registration_url'),
        hydraWebfingerOidcDiscoveryJwksUrl: mapValueOfType<String>(json, r'hydra_webfinger_oidc_discovery_jwks_url'),
        hydraWebfingerOidcDiscoverySupportedClaims: json[r'hydra_webfinger_oidc_discovery_supported_claims'] is List
            ? (json[r'hydra_webfinger_oidc_discovery_supported_claims'] as List).cast<String>()
            : const [],
        hydraWebfingerOidcDiscoverySupportedScope: json[r'hydra_webfinger_oidc_discovery_supported_scope'] is List
            ? (json[r'hydra_webfinger_oidc_discovery_supported_scope'] as List).cast<String>()
            : const [],
        hydraWebfingerOidcDiscoveryTokenUrl: mapValueOfType<String>(json, r'hydra_webfinger_oidc_discovery_token_url'),
        hydraWebfingerOidcDiscoveryUserinfoUrl: mapValueOfType<String>(json, r'hydra_webfinger_oidc_discovery_userinfo_url'),
        id: mapValueOfType<String>(json, r'id'),
        ketoNamespaceConfiguration: mapValueOfType<String>(json, r'keto_namespace_configuration'),
        ketoNamespaces: KetoNamespace.listFromJson(json[r'keto_namespaces']) ?? const [],
        ketoReadMaxDepth: mapValueOfType<int>(json, r'keto_read_max_depth'),
        kratosCookiesSameSite: mapValueOfType<String>(json, r'kratos_cookies_same_site'),
        kratosCourierSmtpConnectionUri: mapValueOfType<String>(json, r'kratos_courier_smtp_connection_uri'),
        kratosCourierSmtpFromAddress: mapValueOfType<String>(json, r'kratos_courier_smtp_from_address'),
        kratosCourierSmtpFromName: mapValueOfType<String>(json, r'kratos_courier_smtp_from_name'),
        kratosCourierSmtpHeaders: mapValueOfType<Object>(json, r'kratos_courier_smtp_headers'),
        kratosCourierTemplatesRecoveryCodeInvalidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_invalid_email_body_html'),
        kratosCourierTemplatesRecoveryCodeInvalidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_invalid_email_body_plaintext'),
        kratosCourierTemplatesRecoveryCodeInvalidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_invalid_email_subject'),
        kratosCourierTemplatesRecoveryCodeValidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_valid_email_body_html'),
        kratosCourierTemplatesRecoveryCodeValidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_valid_email_body_plaintext'),
        kratosCourierTemplatesRecoveryCodeValidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_code_valid_email_subject'),
        kratosCourierTemplatesRecoveryInvalidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_invalid_email_body_html'),
        kratosCourierTemplatesRecoveryInvalidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_invalid_email_body_plaintext'),
        kratosCourierTemplatesRecoveryInvalidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_invalid_email_subject'),
        kratosCourierTemplatesRecoveryValidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_valid_email_body_html'),
        kratosCourierTemplatesRecoveryValidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_valid_email_body_plaintext'),
        kratosCourierTemplatesRecoveryValidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_recovery_valid_email_subject'),
        kratosCourierTemplatesVerificationCodeInvalidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_invalid_email_body_html'),
        kratosCourierTemplatesVerificationCodeInvalidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_invalid_email_body_plaintext'),
        kratosCourierTemplatesVerificationCodeInvalidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_invalid_email_subject'),
        kratosCourierTemplatesVerificationCodeValidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_valid_email_body_html'),
        kratosCourierTemplatesVerificationCodeValidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_valid_email_body_plaintext'),
        kratosCourierTemplatesVerificationCodeValidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_verification_code_valid_email_subject'),
        kratosCourierTemplatesVerificationInvalidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_verification_invalid_email_body_html'),
        kratosCourierTemplatesVerificationInvalidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_verification_invalid_email_body_plaintext'),
        kratosCourierTemplatesVerificationInvalidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_verification_invalid_email_subject'),
        kratosCourierTemplatesVerificationValidEmailBodyHtml: mapValueOfType<String>(json, r'kratos_courier_templates_verification_valid_email_body_html'),
        kratosCourierTemplatesVerificationValidEmailBodyPlaintext: mapValueOfType<String>(json, r'kratos_courier_templates_verification_valid_email_body_plaintext'),
        kratosCourierTemplatesVerificationValidEmailSubject: mapValueOfType<String>(json, r'kratos_courier_templates_verification_valid_email_subject'),
        kratosFeatureFlagsCacheableSessions: mapValueOfType<bool>(json, r'kratos_feature_flags_cacheable_sessions'),
        kratosIdentitySchemas: NormalizedProjectRevisionIdentitySchema.listFromJson(json[r'kratos_identity_schemas']) ?? const [],
        kratosOauth2ProviderHeaders: mapValueOfType<Object>(json, r'kratos_oauth2_provider_headers'),
        kratosOauth2ProviderUrl: mapValueOfType<String>(json, r'kratos_oauth2_provider_url'),
        kratosSecretsCipher: json[r'kratos_secrets_cipher'] is List
            ? (json[r'kratos_secrets_cipher'] as List).cast<String>()
            : const [],
        kratosSecretsCookie: json[r'kratos_secrets_cookie'] is List
            ? (json[r'kratos_secrets_cookie'] as List).cast<String>()
            : const [],
        kratosSecretsDefault: json[r'kratos_secrets_default'] is List
            ? (json[r'kratos_secrets_default'] as List).cast<String>()
            : const [],
        kratosSelfserviceAllowedReturnUrls: json[r'kratos_selfservice_allowed_return_urls'] is List
            ? (json[r'kratos_selfservice_allowed_return_urls'] as List).cast<String>()
            : const [],
        kratosSelfserviceDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_default_browser_return_url'),
        kratosSelfserviceFlowsErrorUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_error_ui_url'),
        kratosSelfserviceFlowsHooks: NormalizedProjectRevisionHook.listFromJson(json[r'kratos_selfservice_flows_hooks']) ?? const [],
        kratosSelfserviceFlowsLoginAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_after_default_browser_return_url'),
        kratosSelfserviceFlowsLoginAfterOidcDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_after_oidc_default_browser_return_url'),
        kratosSelfserviceFlowsLoginAfterPasswordDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_after_password_default_browser_return_url'),
        kratosSelfserviceFlowsLoginAfterWebauthnDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_after_webauthn_default_browser_return_url'),
        kratosSelfserviceFlowsLoginLifespan: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_lifespan'),
        kratosSelfserviceFlowsLoginUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_login_ui_url'),
        kratosSelfserviceFlowsLogoutAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_logout_after_default_browser_return_url'),
        kratosSelfserviceFlowsRecoveryAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_recovery_after_default_browser_return_url'),
        kratosSelfserviceFlowsRecoveryEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_flows_recovery_enabled'),
        kratosSelfserviceFlowsRecoveryLifespan: mapValueOfType<String>(json, r'kratos_selfservice_flows_recovery_lifespan'),
        kratosSelfserviceFlowsRecoveryUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_recovery_ui_url'),
        kratosSelfserviceFlowsRecoveryUse: mapValueOfType<String>(json, r'kratos_selfservice_flows_recovery_use'),
        kratosSelfserviceFlowsRegistrationAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_after_default_browser_return_url'),
        kratosSelfserviceFlowsRegistrationAfterOidcDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_after_oidc_default_browser_return_url'),
        kratosSelfserviceFlowsRegistrationAfterPasswordDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_after_password_default_browser_return_url'),
        kratosSelfserviceFlowsRegistrationAfterWebauthnDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_after_webauthn_default_browser_return_url'),
        kratosSelfserviceFlowsRegistrationEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_flows_registration_enabled'),
        kratosSelfserviceFlowsRegistrationLifespan: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_lifespan'),
        kratosSelfserviceFlowsRegistrationUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_registration_ui_url'),
        kratosSelfserviceFlowsSettingsAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_after_default_browser_return_url'),
        kratosSelfserviceFlowsSettingsAfterPasswordDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_after_password_default_browser_return_url'),
        kratosSelfserviceFlowsSettingsAfterProfileDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_after_profile_default_browser_return_url'),
        kratosSelfserviceFlowsSettingsLifespan: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_lifespan'),
        kratosSelfserviceFlowsSettingsPrivilegedSessionMaxAge: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_privileged_session_max_age'),
        kratosSelfserviceFlowsSettingsRequiredAal: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_required_aal'),
        kratosSelfserviceFlowsSettingsUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_settings_ui_url'),
        kratosSelfserviceFlowsVerificationAfterDefaultBrowserReturnUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_verification_after_default_browser_return_url'),
        kratosSelfserviceFlowsVerificationEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_flows_verification_enabled'),
        kratosSelfserviceFlowsVerificationLifespan: mapValueOfType<String>(json, r'kratos_selfservice_flows_verification_lifespan'),
        kratosSelfserviceFlowsVerificationUiUrl: mapValueOfType<String>(json, r'kratos_selfservice_flows_verification_ui_url'),
        kratosSelfserviceFlowsVerificationUse: mapValueOfType<String>(json, r'kratos_selfservice_flows_verification_use'),
        kratosSelfserviceMethodsCodeConfigLifespan: mapValueOfType<String>(json, r'kratos_selfservice_methods_code_config_lifespan'),
        kratosSelfserviceMethodsCodeEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_code_enabled'),
        kratosSelfserviceMethodsLinkConfigBaseUrl: mapValueOfType<String>(json, r'kratos_selfservice_methods_link_config_base_url'),
        kratosSelfserviceMethodsLinkConfigLifespan: mapValueOfType<String>(json, r'kratos_selfservice_methods_link_config_lifespan'),
        kratosSelfserviceMethodsLinkEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_link_enabled'),
        kratosSelfserviceMethodsLookupSecretEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_lookup_secret_enabled'),
        kratosSelfserviceMethodsOidcConfigBaseRedirectUri: mapValueOfType<String>(json, r'kratos_selfservice_methods_oidc_config_base_redirect_uri'),
        kratosSelfserviceMethodsOidcConfigProviders: NormalizedProjectRevisionThirdPartyProvider.listFromJson(json[r'kratos_selfservice_methods_oidc_config_providers']) ?? const [],
        kratosSelfserviceMethodsOidcEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_oidc_enabled'),
        kratosSelfserviceMethodsPasswordConfigHaveibeenpwnedEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_password_config_haveibeenpwned_enabled'),
        kratosSelfserviceMethodsPasswordConfigIdentifierSimilarityCheckEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_password_config_identifier_similarity_check_enabled'),
        kratosSelfserviceMethodsPasswordConfigIgnoreNetworkErrors: mapValueOfType<bool>(json, r'kratos_selfservice_methods_password_config_ignore_network_errors'),
        kratosSelfserviceMethodsPasswordConfigMaxBreaches: mapValueOfType<int>(json, r'kratos_selfservice_methods_password_config_max_breaches'),
        kratosSelfserviceMethodsPasswordConfigMinPasswordLength: mapValueOfType<int>(json, r'kratos_selfservice_methods_password_config_min_password_length'),
        kratosSelfserviceMethodsPasswordEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_password_enabled'),
        kratosSelfserviceMethodsProfileEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_profile_enabled'),
        kratosSelfserviceMethodsTotpConfigIssuer: mapValueOfType<String>(json, r'kratos_selfservice_methods_totp_config_issuer'),
        kratosSelfserviceMethodsTotpEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_totp_enabled'),
        kratosSelfserviceMethodsWebauthnConfigPasswordless: mapValueOfType<bool>(json, r'kratos_selfservice_methods_webauthn_config_passwordless'),
        kratosSelfserviceMethodsWebauthnConfigRpDisplayName: mapValueOfType<String>(json, r'kratos_selfservice_methods_webauthn_config_rp_display_name'),
        kratosSelfserviceMethodsWebauthnConfigRpIcon: mapValueOfType<String>(json, r'kratos_selfservice_methods_webauthn_config_rp_icon'),
        kratosSelfserviceMethodsWebauthnConfigRpId: mapValueOfType<String>(json, r'kratos_selfservice_methods_webauthn_config_rp_id'),
        kratosSelfserviceMethodsWebauthnConfigRpOrigin: mapValueOfType<String>(json, r'kratos_selfservice_methods_webauthn_config_rp_origin'),
        kratosSelfserviceMethodsWebauthnEnabled: mapValueOfType<bool>(json, r'kratos_selfservice_methods_webauthn_enabled'),
        kratosSessionCookiePersistent: mapValueOfType<bool>(json, r'kratos_session_cookie_persistent'),
        kratosSessionCookieSameSite: mapValueOfType<String>(json, r'kratos_session_cookie_same_site'),
        kratosSessionLifespan: mapValueOfType<String>(json, r'kratos_session_lifespan'),
        kratosSessionWhoamiRequiredAal: mapValueOfType<String>(json, r'kratos_session_whoami_required_aal'),
        name: mapValueOfType<String>(json, r'name')!,
        production: mapValueOfType<bool>(json, r'production'),
        projectId: mapValueOfType<String>(json, r'project_id'),
        updatedAt: mapDateTime(json, r'updated_at', ''),
      );
    }
    return null;
  }

  static List<NormalizedProjectRevision>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NormalizedProjectRevision>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NormalizedProjectRevision.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NormalizedProjectRevision> mapFromJson(dynamic json) {
    final map = <String, NormalizedProjectRevision>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevision.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NormalizedProjectRevision-objects as value to a dart map
  static Map<String, List<NormalizedProjectRevision>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NormalizedProjectRevision>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevision.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

/// Defines access token type. jwt is a bad idea, see https://www.ory.sh/docs/hydra/advanced#json-web-tokens  This governs the \"strategies.access_token\" setting. opaque OAUTH2_ACCESS_TOKEN_STRATEGY_OPAQUE jwt OAUTH2_ACCESS_TOKEN_STRATEGY_JWT
class NormalizedProjectRevisionHydraStrategiesAccessTokenEnum {
  /// Instantiate a new enum with the provided [value].
  const NormalizedProjectRevisionHydraStrategiesAccessTokenEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const opaque = NormalizedProjectRevisionHydraStrategiesAccessTokenEnum._(r'opaque');
  static const jwt = NormalizedProjectRevisionHydraStrategiesAccessTokenEnum._(r'jwt');

  /// List of all possible values in this [enum][NormalizedProjectRevisionHydraStrategiesAccessTokenEnum].
  static const values = <NormalizedProjectRevisionHydraStrategiesAccessTokenEnum>[
    opaque,
    jwt,
  ];

  static NormalizedProjectRevisionHydraStrategiesAccessTokenEnum? fromJson(dynamic value) => NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer().decode(value);

  static List<NormalizedProjectRevisionHydraStrategiesAccessTokenEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NormalizedProjectRevisionHydraStrategiesAccessTokenEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NormalizedProjectRevisionHydraStrategiesAccessTokenEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NormalizedProjectRevisionHydraStrategiesAccessTokenEnum] to String,
/// and [decode] dynamic data back to [NormalizedProjectRevisionHydraStrategiesAccessTokenEnum].
class NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer {
  factory NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer() => _instance ??= const NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer._();

  const NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer._();

  String encode(NormalizedProjectRevisionHydraStrategiesAccessTokenEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NormalizedProjectRevisionHydraStrategiesAccessTokenEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NormalizedProjectRevisionHydraStrategiesAccessTokenEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'opaque': return NormalizedProjectRevisionHydraStrategiesAccessTokenEnum.opaque;
        case r'jwt': return NormalizedProjectRevisionHydraStrategiesAccessTokenEnum.jwt;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer] instance.
  static NormalizedProjectRevisionHydraStrategiesAccessTokenEnumTypeTransformer? _instance;
}


/// Defines how scopes are matched. For more details have a look at https://github.com/ory/fosite#scopes  This governs the \"strategies.scope\" setting. exact OAUTH2_SCOPE_STRATEGY_EXACT wildcard OAUTH2_SCOPE_STRATEGY_WILDCARD
class NormalizedProjectRevisionHydraStrategiesScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const NormalizedProjectRevisionHydraStrategiesScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const exact = NormalizedProjectRevisionHydraStrategiesScopeEnum._(r'exact');
  static const wildcard = NormalizedProjectRevisionHydraStrategiesScopeEnum._(r'wildcard');

  /// List of all possible values in this [enum][NormalizedProjectRevisionHydraStrategiesScopeEnum].
  static const values = <NormalizedProjectRevisionHydraStrategiesScopeEnum>[
    exact,
    wildcard,
  ];

  static NormalizedProjectRevisionHydraStrategiesScopeEnum? fromJson(dynamic value) => NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer().decode(value);

  static List<NormalizedProjectRevisionHydraStrategiesScopeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NormalizedProjectRevisionHydraStrategiesScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NormalizedProjectRevisionHydraStrategiesScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NormalizedProjectRevisionHydraStrategiesScopeEnum] to String,
/// and [decode] dynamic data back to [NormalizedProjectRevisionHydraStrategiesScopeEnum].
class NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer {
  factory NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer() => _instance ??= const NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer._();

  const NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer._();

  String encode(NormalizedProjectRevisionHydraStrategiesScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NormalizedProjectRevisionHydraStrategiesScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NormalizedProjectRevisionHydraStrategiesScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'exact': return NormalizedProjectRevisionHydraStrategiesScopeEnum.exact;
        case r'wildcard': return NormalizedProjectRevisionHydraStrategiesScopeEnum.wildcard;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer] instance.
  static NormalizedProjectRevisionHydraStrategiesScopeEnumTypeTransformer? _instance;
}


