//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class OAuth2Api {
  OAuth2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  This endpoint tells Ory that the subject has authorized the OAuth 2.0 client to access resources on his/her behalf. The consent provider includes additional information, such as session data for access and ID tokens, and if the consent request should be used as basis for future requests.  The response contains a redirect URL which the consent provider should redirect the user-agent to.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  ///
  /// * [AcceptOAuth2ConsentRequest] acceptOAuth2ConsentRequest:
  Future<Response> acceptOAuth2ConsentRequestWithHttpInfo(
    String consentChallenge, {
    AcceptOAuth2ConsentRequest? acceptOAuth2ConsentRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/consent/accept';

    // ignore: prefer_final_locals
    Object? postBody = acceptOAuth2ConsentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'consent_challenge', consentChallenge));

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Accept OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  This endpoint tells Ory that the subject has authorized the OAuth 2.0 client to access resources on his/her behalf. The consent provider includes additional information, such as session data for access and ID tokens, and if the consent request should be used as basis for future requests.  The response contains a redirect URL which the consent provider should redirect the user-agent to.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  ///
  /// * [AcceptOAuth2ConsentRequest] acceptOAuth2ConsentRequest:
  Future<OAuth2RedirectTo?> acceptOAuth2ConsentRequest(
    String consentChallenge, {
    AcceptOAuth2ConsentRequest? acceptOAuth2ConsentRequest,
  }) async {
    final response = await acceptOAuth2ConsentRequestWithHttpInfo(
      consentChallenge,
      acceptOAuth2ConsentRequest: acceptOAuth2ConsentRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2RedirectTo',
      ) as OAuth2RedirectTo;
    }
    return null;
  }

  /// Accept OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.  This endpoint tells Ory that the subject has successfully authenticated and includes additional information such as the subject's ID and if Ory should remember the subject's subject agent for future authentication attempts by setting a cookie.  The response contains a redirect URL which the login provider should redirect the user-agent to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  ///
  /// * [AcceptOAuth2LoginRequest] acceptOAuth2LoginRequest:
  Future<Response> acceptOAuth2LoginRequestWithHttpInfo(
    String loginChallenge, {
    AcceptOAuth2LoginRequest? acceptOAuth2LoginRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/login/accept';

    // ignore: prefer_final_locals
    Object? postBody = acceptOAuth2LoginRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'login_challenge', loginChallenge));

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Accept OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.  This endpoint tells Ory that the subject has successfully authenticated and includes additional information such as the subject's ID and if Ory should remember the subject's subject agent for future authentication attempts by setting a cookie.  The response contains a redirect URL which the login provider should redirect the user-agent to.
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  ///
  /// * [AcceptOAuth2LoginRequest] acceptOAuth2LoginRequest:
  Future<OAuth2RedirectTo?> acceptOAuth2LoginRequest(
    String loginChallenge, {
    AcceptOAuth2LoginRequest? acceptOAuth2LoginRequest,
  }) async {
    final response = await acceptOAuth2LoginRequestWithHttpInfo(
      loginChallenge,
      acceptOAuth2LoginRequest: acceptOAuth2LoginRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2RedirectTo',
      ) as OAuth2RedirectTo;
    }
    return null;
  }

  /// Accept OAuth 2.0 Session Logout Request
  ///
  /// When a user or an application requests Ory OAuth 2.0 to remove the session state of a subject, this endpoint is used to confirm that logout request.  The response contains a redirect URL which the consent provider should redirect the user-agent to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  ///   OAuth 2.0 Logout Request Challenge
  Future<Response> acceptOAuth2LogoutRequestWithHttpInfo(
    String logoutChallenge,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/logout/accept';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'logout_challenge', logoutChallenge));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Accept OAuth 2.0 Session Logout Request
  ///
  /// When a user or an application requests Ory OAuth 2.0 to remove the session state of a subject, this endpoint is used to confirm that logout request.  The response contains a redirect URL which the consent provider should redirect the user-agent to.
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  ///   OAuth 2.0 Logout Request Challenge
  Future<OAuth2RedirectTo?> acceptOAuth2LogoutRequest(
    String logoutChallenge,
  ) async {
    final response = await acceptOAuth2LogoutRequestWithHttpInfo(
      logoutChallenge,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2RedirectTo',
      ) as OAuth2RedirectTo;
    }
    return null;
  }

  /// Create OAuth 2.0 Client
  ///
  /// Create a new OAuth 2.0 client. If you pass `client_secret` the secret is used, otherwise a random secret is generated. The secret is echoed in the response. It is not possible to retrieve it later on.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OAuth2Client] oAuth2Client (required):
  ///   OAuth 2.0 Client Request Body
  Future<Response> createOAuth2ClientWithHttpInfo(
    OAuth2Client oAuth2Client,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients';

    // ignore: prefer_final_locals
    Object? postBody = oAuth2Client;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create OAuth 2.0 Client
  ///
  /// Create a new OAuth 2.0 client. If you pass `client_secret` the secret is used, otherwise a random secret is generated. The secret is echoed in the response. It is not possible to retrieve it later on.
  ///
  /// Parameters:
  ///
  /// * [OAuth2Client] oAuth2Client (required):
  ///   OAuth 2.0 Client Request Body
  Future<OAuth2Client?> createOAuth2Client(
    OAuth2Client oAuth2Client,
  ) async {
    final response = await createOAuth2ClientWithHttpInfo(
      oAuth2Client,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2Client',
      ) as OAuth2Client;
    }
    return null;
  }

  /// Delete OAuth 2.0 Client
  ///
  /// Delete an existing OAuth 2.0 Client by its ID.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.  Make sure that this endpoint is well protected and only callable by first-party components.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  Future<Response> deleteOAuth2ClientWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete OAuth 2.0 Client
  ///
  /// Delete an existing OAuth 2.0 Client by its ID.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.  Make sure that this endpoint is well protected and only callable by first-party components.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  Future<void> deleteOAuth2Client(
    String id,
  ) async {
    final response = await deleteOAuth2ClientWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete OAuth 2.0 Access Tokens from specific OAuth 2.0 Client
  ///
  /// This endpoint deletes OAuth2 access tokens issued to an OAuth 2.0 Client from the database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///   OAuth 2.0 Client ID
  Future<Response> deleteOAuth2TokenWithHttpInfo(
    String clientId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/tokens';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'client_id', clientId));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete OAuth 2.0 Access Tokens from specific OAuth 2.0 Client
  ///
  /// This endpoint deletes OAuth2 access tokens issued to an OAuth 2.0 Client from the database.
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///   OAuth 2.0 Client ID
  Future<void> deleteOAuth2Token(
    String clientId,
  ) async {
    final response = await deleteOAuth2TokenWithHttpInfo(
      clientId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Trusted OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to delete trusted JWT Bearer Grant Type Issuer. The ID is the one returned when you created the trust relationship.  Once deleted, the associated issuer will no longer be able to perform the JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the desired grant
  Future<Response> deleteTrustedOAuth2JwtGrantIssuerWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/admin/trust/grants/jwt-bearer/issuers/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Trusted OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to delete trusted JWT Bearer Grant Type Issuer. The ID is the one returned when you created the trust relationship.  Once deleted, the associated issuer will no longer be able to perform the JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grant.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the desired grant
  Future<void> deleteTrustedOAuth2JwtGrantIssuer(
    String id,
  ) async {
    final response = await deleteTrustedOAuth2JwtGrantIssuerWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an OAuth 2.0 Client
  ///
  /// Get an OAuth 2.0 client by its ID. This endpoint never returns the client secret.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  Future<Response> getOAuth2ClientWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an OAuth 2.0 Client
  ///
  /// Get an OAuth 2.0 client by its ID. This endpoint never returns the client secret.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  Future<OAuth2Client?> getOAuth2Client(
    String id,
  ) async {
    final response = await getOAuth2ClientWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2Client',
      ) as OAuth2Client;
    }
    return null;
  }

  /// Get OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  Future<Response> getOAuth2ConsentRequestWithHttpInfo(
    String consentChallenge,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'consent_challenge', consentChallenge));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  Future<OAuth2ConsentRequest?> getOAuth2ConsentRequest(
    String consentChallenge,
  ) async {
    final response = await getOAuth2ConsentRequestWithHttpInfo(
      consentChallenge,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2ConsentRequest',
      ) as OAuth2ConsentRequest;
    }
    return null;
  }

  /// Get OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  Per default, the login provider is Ory itself. You may use a different login provider which needs to be a web-app you write and host, and it must be able to authenticate (\"show the subject a login screen\") a subject (in OAuth2 the proper name for subject is \"resource owner\").  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  Future<Response> getOAuth2LoginRequestWithHttpInfo(
    String loginChallenge,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/login';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'login_challenge', loginChallenge));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  Per default, the login provider is Ory itself. You may use a different login provider which needs to be a web-app you write and host, and it must be able to authenticate (\"show the subject a login screen\") a subject (in OAuth2 the proper name for subject is \"resource owner\").  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  Future<OAuth2LoginRequest?> getOAuth2LoginRequest(
    String loginChallenge,
  ) async {
    final response = await getOAuth2LoginRequestWithHttpInfo(
      loginChallenge,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2LoginRequest',
      ) as OAuth2LoginRequest;
    }
    return null;
  }

  /// Get OAuth 2.0 Session Logout Request
  ///
  /// Use this endpoint to fetch an Ory OAuth 2.0 logout request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  Future<Response> getOAuth2LogoutRequestWithHttpInfo(
    String logoutChallenge,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/logout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'logout_challenge', logoutChallenge));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get OAuth 2.0 Session Logout Request
  ///
  /// Use this endpoint to fetch an Ory OAuth 2.0 logout request.
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  Future<OAuth2LogoutRequest?> getOAuth2LogoutRequest(
    String logoutChallenge,
  ) async {
    final response = await getOAuth2LogoutRequestWithHttpInfo(
      logoutChallenge,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2LogoutRequest',
      ) as OAuth2LogoutRequest;
    }
    return null;
  }

  /// Get Trusted OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to get a trusted JWT Bearer Grant Type Issuer. The ID is the one returned when you created the trust relationship.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the desired grant
  Future<Response> getTrustedOAuth2JwtGrantIssuerWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/admin/trust/grants/jwt-bearer/issuers/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Trusted OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to get a trusted JWT Bearer Grant Type Issuer. The ID is the one returned when you created the trust relationship.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the desired grant
  Future<TrustedOAuth2JwtGrantIssuer?> getTrustedOAuth2JwtGrantIssuer(
    String id,
  ) async {
    final response = await getTrustedOAuth2JwtGrantIssuerWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'TrustedOAuth2JwtGrantIssuer',
      ) as TrustedOAuth2JwtGrantIssuer;
    }
    return null;
  }

  /// Introspect OAuth2 Access and Refresh Tokens
  ///
  /// The introspection endpoint allows to check if a token (both refresh and access) is active or not. An active token is neither expired nor revoked. If a token is active, additional information on the token will be included. You can set additional data for a token by setting `session.access_token` during the consent flow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The string value of the token. For access tokens, this is the \\\"access_token\\\" value returned from the token endpoint defined in OAuth 2.0. For refresh tokens, this is the \\\"refresh_token\\\" value returned.
  ///
  /// * [String] scope:
  ///   An optional, space separated list of required scopes. If the access token was not granted one of the scopes, the result of active will be false.
  Future<Response> introspectOAuth2TokenWithHttpInfo(
    String token, {
    String? scope,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/introspect';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (scope != null) {
      formParams[r'scope'] = parameterToString(scope);
    }
    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Introspect OAuth2 Access and Refresh Tokens
  ///
  /// The introspection endpoint allows to check if a token (both refresh and access) is active or not. An active token is neither expired nor revoked. If a token is active, additional information on the token will be included. You can set additional data for a token by setting `session.access_token` during the consent flow.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   The string value of the token. For access tokens, this is the \\\"access_token\\\" value returned from the token endpoint defined in OAuth 2.0. For refresh tokens, this is the \\\"refresh_token\\\" value returned.
  ///
  /// * [String] scope:
  ///   An optional, space separated list of required scopes. If the access token was not granted one of the scopes, the result of active will be false.
  Future<IntrospectedOAuth2Token?> introspectOAuth2Token(
    String token, {
    String? scope,
  }) async {
    final response = await introspectOAuth2TokenWithHttpInfo(
      token,
      scope: scope,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'IntrospectedOAuth2Token',
      ) as IntrospectedOAuth2Token;
    }
    return null;
  }

  /// List OAuth 2.0 Clients
  ///
  /// This endpoint lists all clients in the database, and never returns client secrets. As a default it lists the first 100 clients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] clientName:
  ///   The name of the clients to filter by.
  ///
  /// * [String] owner:
  ///   The owner of the clients to filter by.
  Future<Response> listOAuth2ClientsWithHttpInfo({
    int? pageSize,
    String? pageToken,
    String? clientName,
    String? owner,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'page_size', pageSize));
    }
    if (pageToken != null) {
      queryParams.addAll(_queryParams('', 'page_token', pageToken));
    }
    if (clientName != null) {
      queryParams.addAll(_queryParams('', 'client_name', clientName));
    }
    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List OAuth 2.0 Clients
  ///
  /// This endpoint lists all clients in the database, and never returns client secrets. As a default it lists the first 100 clients.
  ///
  /// Parameters:
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] clientName:
  ///   The name of the clients to filter by.
  ///
  /// * [String] owner:
  ///   The owner of the clients to filter by.
  Future<List<OAuth2Client>?> listOAuth2Clients({
    int? pageSize,
    String? pageToken,
    String? clientName,
    String? owner,
  }) async {
    final response = await listOAuth2ClientsWithHttpInfo(
      pageSize: pageSize,
      pageToken: pageToken,
      clientName: clientName,
      owner: owner,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<OAuth2Client>') as List)
          .cast<OAuth2Client>()
          .toList();
    }
    return null;
  }

  /// List OAuth 2.0 Consent Sessions of a Subject
  ///
  /// This endpoint lists all subject's granted consent sessions, including client and granted scope. If the subject is unknown or has not granted any consent sessions yet, the endpoint returns an empty JSON array with status code 200 OK.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   The subject to list the consent sessions for.
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] loginSessionId:
  ///   The login session id to list the consent sessions for.
  Future<Response> listOAuth2ConsentSessionsWithHttpInfo(
    String subject, {
    int? pageSize,
    String? pageToken,
    String? loginSessionId,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/sessions/consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'page_size', pageSize));
    }
    if (pageToken != null) {
      queryParams.addAll(_queryParams('', 'page_token', pageToken));
    }
    queryParams.addAll(_queryParams('', 'subject', subject));
    if (loginSessionId != null) {
      queryParams.addAll(_queryParams('', 'login_session_id', loginSessionId));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List OAuth 2.0 Consent Sessions of a Subject
  ///
  /// This endpoint lists all subject's granted consent sessions, including client and granted scope. If the subject is unknown or has not granted any consent sessions yet, the endpoint returns an empty JSON array with status code 200 OK.
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   The subject to list the consent sessions for.
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] loginSessionId:
  ///   The login session id to list the consent sessions for.
  Future<List<OAuth2ConsentSession>?> listOAuth2ConsentSessions(
    String subject, {
    int? pageSize,
    String? pageToken,
    String? loginSessionId,
  }) async {
    final response = await listOAuth2ConsentSessionsWithHttpInfo(
      subject,
      pageSize: pageSize,
      pageToken: pageToken,
      loginSessionId: loginSessionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<OAuth2ConsentSession>') as List)
          .cast<OAuth2ConsentSession>()
          .toList();
    }
    return null;
  }

  /// List Trusted OAuth2 JWT Bearer Grant Type Issuers
  ///
  /// Use this endpoint to list all trusted JWT Bearer Grant Type Issuers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxItems:
  ///
  /// * [int] defaultItems:
  ///
  /// * [String] issuer:
  ///   If optional \"issuer\" is supplied, only jwt-bearer grants with this issuer will be returned.
  Future<Response> listTrustedOAuth2JwtGrantIssuersWithHttpInfo({
    int? maxItems,
    int? defaultItems,
    String? issuer,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/trust/grants/jwt-bearer/issuers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxItems != null) {
      queryParams.addAll(_queryParams('', 'MaxItems', maxItems));
    }
    if (defaultItems != null) {
      queryParams.addAll(_queryParams('', 'DefaultItems', defaultItems));
    }
    if (issuer != null) {
      queryParams.addAll(_queryParams('', 'issuer', issuer));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List Trusted OAuth2 JWT Bearer Grant Type Issuers
  ///
  /// Use this endpoint to list all trusted JWT Bearer Grant Type Issuers.
  ///
  /// Parameters:
  ///
  /// * [int] maxItems:
  ///
  /// * [int] defaultItems:
  ///
  /// * [String] issuer:
  ///   If optional \"issuer\" is supplied, only jwt-bearer grants with this issuer will be returned.
  Future<List<TrustedOAuth2JwtGrantIssuer>?> listTrustedOAuth2JwtGrantIssuers({
    int? maxItems,
    int? defaultItems,
    String? issuer,
  }) async {
    final response = await listTrustedOAuth2JwtGrantIssuersWithHttpInfo(
      maxItems: maxItems,
      defaultItems: defaultItems,
      issuer: issuer,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<TrustedOAuth2JwtGrantIssuer>') as List)
          .cast<TrustedOAuth2JwtGrantIssuer>()
          .toList();
    }
    return null;
  }

  /// OAuth 2.0 Authorize Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries at https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> oAuth2AuthorizeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/auth';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OAuth 2.0 Authorize Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries at https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  Future<ErrorOAuth2?> oAuth2Authorize() async {
    final response = await oAuth2AuthorizeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ErrorOAuth2',
      ) as ErrorOAuth2;
    }
    return null;
  }

  /// The OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] clientId:
  ///
  /// * [String] code:
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] refreshToken:
  Future<Response> oauth2TokenExchangeWithHttpInfo(
    String grantType, {
    String? clientId,
    String? code,
    String? redirectUri,
    String? refreshToken,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (code != null) {
      formParams[r'code'] = parameterToString(code);
    }
    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
    if (redirectUri != null) {
      formParams[r'redirect_uri'] = parameterToString(redirectUri);
    }
    if (refreshToken != null) {
      formParams[r'refresh_token'] = parameterToString(refreshToken);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// The OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] clientId:
  ///
  /// * [String] code:
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] refreshToken:
  Future<OAuth2TokenExchange?> oauth2TokenExchange(
    String grantType, {
    String? clientId,
    String? code,
    String? redirectUri,
    String? refreshToken,
  }) async {
    final response = await oauth2TokenExchangeWithHttpInfo(
      grantType,
      clientId: clientId,
      code: code,
      redirectUri: redirectUri,
      refreshToken: refreshToken,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2TokenExchange',
      ) as OAuth2TokenExchange;
    }
    return null;
  }

  /// Patch OAuth 2.0 Client
  ///
  /// Patch an existing OAuth 2.0 Client using JSON Patch. If you pass `client_secret` the secret will be updated and returned via the API. This is the only time you will be able to retrieve the client secret, so write it down and keep it safe.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  ///
  /// * [List<JsonPatch>] jsonPatch (required):
  ///   OAuth 2.0 Client JSON Patch Body
  Future<Response> patchOAuth2ClientWithHttpInfo(
    String id,
    List<JsonPatch> jsonPatch,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jsonPatch;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Patch OAuth 2.0 Client
  ///
  /// Patch an existing OAuth 2.0 Client using JSON Patch. If you pass `client_secret` the secret will be updated and returned via the API. This is the only time you will be able to retrieve the client secret, so write it down and keep it safe.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the OAuth 2.0 Client.
  ///
  /// * [List<JsonPatch>] jsonPatch (required):
  ///   OAuth 2.0 Client JSON Patch Body
  Future<OAuth2Client?> patchOAuth2Client(
    String id,
    List<JsonPatch> jsonPatch,
  ) async {
    final response = await patchOAuth2ClientWithHttpInfo(
      id,
      jsonPatch,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2Client',
      ) as OAuth2Client;
    }
    return null;
  }

  /// Reject OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  This endpoint tells Ory that the subject has not authorized the OAuth 2.0 client to access resources on his/her behalf. The consent provider must include a reason why the consent was not granted.  The response contains a redirect URL which the consent provider should redirect the user-agent to.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  ///
  /// * [RejectOAuth2Request] rejectOAuth2Request:
  Future<Response> rejectOAuth2ConsentRequestWithHttpInfo(
    String consentChallenge, {
    RejectOAuth2Request? rejectOAuth2Request,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/consent/reject';

    // ignore: prefer_final_locals
    Object? postBody = rejectOAuth2Request;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'consent_challenge', consentChallenge));

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reject OAuth 2.0 Consent Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell Ory now about it. If the subject authenticated, he/she must now be asked if the OAuth 2.0 Client which initiated the flow should be allowed to access the resources on the subject's behalf.  The consent challenge is appended to the consent provider's URL to which the subject's user-agent (browser) is redirected to. The consent provider uses that challenge to fetch information on the OAuth2 request and then tells Ory if the subject accepted or rejected the request.  This endpoint tells Ory that the subject has not authorized the OAuth 2.0 client to access resources on his/her behalf. The consent provider must include a reason why the consent was not granted.  The response contains a redirect URL which the consent provider should redirect the user-agent to.  The default consent provider is available via the Ory Managed Account Experience. To customize the consent provider, please head over to the OAuth 2.0 documentation.
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge (required):
  ///   OAuth 2.0 Consent Request Challenge
  ///
  /// * [RejectOAuth2Request] rejectOAuth2Request:
  Future<OAuth2RedirectTo?> rejectOAuth2ConsentRequest(
    String consentChallenge, {
    RejectOAuth2Request? rejectOAuth2Request,
  }) async {
    final response = await rejectOAuth2ConsentRequestWithHttpInfo(
      consentChallenge,
      rejectOAuth2Request: rejectOAuth2Request,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2RedirectTo',
      ) as OAuth2RedirectTo;
    }
    return null;
  }

  /// Reject OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.  This endpoint tells Ory that the subject has not authenticated and includes a reason why the authentication was denied.  The response contains a redirect URL which the login provider should redirect the user-agent to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  ///
  /// * [RejectOAuth2Request] rejectOAuth2Request:
  Future<Response> rejectOAuth2LoginRequestWithHttpInfo(
    String loginChallenge, {
    RejectOAuth2Request? rejectOAuth2Request,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/login/reject';

    // ignore: prefer_final_locals
    Object? postBody = rejectOAuth2Request;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'login_challenge', loginChallenge));

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reject OAuth 2.0 Login Request
  ///
  /// When an authorization code, hybrid, or implicit OAuth 2.0 Flow is initiated, Ory asks the login provider to authenticate the subject and then tell the Ory OAuth2 Service about it.  The authentication challenge is appended to the login provider URL to which the subject's user-agent (browser) is redirected to. The login provider uses that challenge to fetch information on the OAuth2 request and then accept or reject the requested authentication process.  This endpoint tells Ory that the subject has not authenticated and includes a reason why the authentication was denied.  The response contains a redirect URL which the login provider should redirect the user-agent to.
  ///
  /// Parameters:
  ///
  /// * [String] loginChallenge (required):
  ///   OAuth 2.0 Login Request Challenge
  ///
  /// * [RejectOAuth2Request] rejectOAuth2Request:
  Future<OAuth2RedirectTo?> rejectOAuth2LoginRequest(
    String loginChallenge, {
    RejectOAuth2Request? rejectOAuth2Request,
  }) async {
    final response = await rejectOAuth2LoginRequestWithHttpInfo(
      loginChallenge,
      rejectOAuth2Request: rejectOAuth2Request,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2RedirectTo',
      ) as OAuth2RedirectTo;
    }
    return null;
  }

  /// Reject OAuth 2.0 Session Logout Request
  ///
  /// When a user or an application requests Ory OAuth 2.0 to remove the session state of a subject, this endpoint is used to deny that logout request. No HTTP request body is required.  The response is empty as the logout provider has to chose what action to perform next.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  Future<Response> rejectOAuth2LogoutRequestWithHttpInfo(
    String logoutChallenge,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/requests/logout/reject';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'logout_challenge', logoutChallenge));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reject OAuth 2.0 Session Logout Request
  ///
  /// When a user or an application requests Ory OAuth 2.0 to remove the session state of a subject, this endpoint is used to deny that logout request. No HTTP request body is required.  The response is empty as the logout provider has to chose what action to perform next.
  ///
  /// Parameters:
  ///
  /// * [String] logoutChallenge (required):
  Future<void> rejectOAuth2LogoutRequest(
    String logoutChallenge,
  ) async {
    final response = await rejectOAuth2LogoutRequestWithHttpInfo(
      logoutChallenge,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke OAuth 2.0 Consent Sessions of a Subject
  ///
  /// This endpoint revokes a subject's granted consent sessions and invalidates all associated OAuth 2.0 Access Tokens. You may also only revoke sessions for a specific OAuth 2.0 Client ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   OAuth 2.0 Consent Subject  The subject whose consent sessions should be deleted.
  ///
  /// * [String] client:
  ///   OAuth 2.0 Client ID  If set, deletes only those consent sessions that have been granted to the specified OAuth 2.0 Client ID.
  ///
  /// * [bool] all:
  ///   Revoke All Consent Sessions  If set to `true` deletes all consent sessions by the Subject that have been granted.
  Future<Response> revokeOAuth2ConsentSessionsWithHttpInfo(
    String subject, {
    String? client,
    bool? all,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/sessions/consent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'subject', subject));
    if (client != null) {
      queryParams.addAll(_queryParams('', 'client', client));
    }
    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke OAuth 2.0 Consent Sessions of a Subject
  ///
  /// This endpoint revokes a subject's granted consent sessions and invalidates all associated OAuth 2.0 Access Tokens. You may also only revoke sessions for a specific OAuth 2.0 Client ID.
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   OAuth 2.0 Consent Subject  The subject whose consent sessions should be deleted.
  ///
  /// * [String] client:
  ///   OAuth 2.0 Client ID  If set, deletes only those consent sessions that have been granted to the specified OAuth 2.0 Client ID.
  ///
  /// * [bool] all:
  ///   Revoke All Consent Sessions  If set to `true` deletes all consent sessions by the Subject that have been granted.
  Future<void> revokeOAuth2ConsentSessions(
    String subject, {
    String? client,
    bool? all,
  }) async {
    final response = await revokeOAuth2ConsentSessionsWithHttpInfo(
      subject,
      client: client,
      all: all,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revokes All OAuth 2.0 Login Sessions of a Subject
  ///
  /// This endpoint invalidates a subject's authentication session. After revoking the authentication session, the subject has to re-authenticate at the Ory OAuth2 Provider. This endpoint does not invalidate any tokens and does not work with OpenID Connect Front- or Back-channel logout.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   OAuth 2.0 Subject  The subject to revoke authentication sessions for.
  Future<Response> revokeOAuth2LoginSessionsWithHttpInfo(
    String subject,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/oauth2/auth/sessions/login';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'subject', subject));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revokes All OAuth 2.0 Login Sessions of a Subject
  ///
  /// This endpoint invalidates a subject's authentication session. After revoking the authentication session, the subject has to re-authenticate at the Ory OAuth2 Provider. This endpoint does not invalidate any tokens and does not work with OpenID Connect Front- or Back-channel logout.
  ///
  /// Parameters:
  ///
  /// * [String] subject (required):
  ///   OAuth 2.0 Subject  The subject to revoke authentication sessions for.
  Future<void> revokeOAuth2LoginSessions(
    String subject,
  ) async {
    final response = await revokeOAuth2LoginSessionsWithHttpInfo(
      subject,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke OAuth 2.0 Access or Refresh Token
  ///
  /// Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<Response> revokeOAuth2TokenWithHttpInfo(
    String token, {
    String? clientId,
    String? clientSecret,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/revoke';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }
    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke OAuth 2.0 Access or Refresh Token
  ///
  /// Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<void> revokeOAuth2Token(
    String token, {
    String? clientId,
    String? clientSecret,
  }) async {
    final response = await revokeOAuth2TokenWithHttpInfo(
      token,
      clientId: clientId,
      clientSecret: clientSecret,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set OAuth 2.0 Client
  ///
  /// Replaces an existing OAuth 2.0 Client with the payload you send. If you pass `client_secret` the secret is used, otherwise the existing secret is used.  If set, the secret is echoed in the response. It is not possible to retrieve it later on.  OAuth 2.0 Clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   OAuth 2.0 Client ID
  ///
  /// * [OAuth2Client] oAuth2Client (required):
  ///   OAuth 2.0 Client Request Body
  Future<Response> setOAuth2ClientWithHttpInfo(
    String id,
    OAuth2Client oAuth2Client,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = oAuth2Client;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set OAuth 2.0 Client
  ///
  /// Replaces an existing OAuth 2.0 Client with the payload you send. If you pass `client_secret` the secret is used, otherwise the existing secret is used.  If set, the secret is echoed in the response. It is not possible to retrieve it later on.  OAuth 2.0 Clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   OAuth 2.0 Client ID
  ///
  /// * [OAuth2Client] oAuth2Client (required):
  ///   OAuth 2.0 Client Request Body
  Future<OAuth2Client?> setOAuth2Client(
    String id,
    OAuth2Client oAuth2Client,
  ) async {
    final response = await setOAuth2ClientWithHttpInfo(
      id,
      oAuth2Client,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2Client',
      ) as OAuth2Client;
    }
    return null;
  }

  /// Set OAuth2 Client Token Lifespans
  ///
  /// Set lifespans of different token types issued for this OAuth 2.0 client. Does not modify other fields.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   OAuth 2.0 Client ID
  ///
  /// * [OAuth2ClientTokenLifespans] oAuth2ClientTokenLifespans:
  Future<Response> setOAuth2ClientLifespansWithHttpInfo(
    String id, {
    OAuth2ClientTokenLifespans? oAuth2ClientTokenLifespans,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/clients/{id}/lifespans'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = oAuth2ClientTokenLifespans;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set OAuth2 Client Token Lifespans
  ///
  /// Set lifespans of different token types issued for this OAuth 2.0 client. Does not modify other fields.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   OAuth 2.0 Client ID
  ///
  /// * [OAuth2ClientTokenLifespans] oAuth2ClientTokenLifespans:
  Future<OAuth2Client?> setOAuth2ClientLifespans(
    String id, {
    OAuth2ClientTokenLifespans? oAuth2ClientTokenLifespans,
  }) async {
    final response = await setOAuth2ClientLifespansWithHttpInfo(
      id,
      oAuth2ClientTokenLifespans: oAuth2ClientTokenLifespans,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OAuth2Client',
      ) as OAuth2Client;
    }
    return null;
  }

  /// Trust OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to establish a trust relationship for a JWT issuer to perform JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants [RFC7523](https://datatracker.ietf.org/doc/html/rfc7523).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrustOAuth2JwtGrantIssuer] trustOAuth2JwtGrantIssuer:
  Future<Response> trustOAuth2JwtGrantIssuerWithHttpInfo({
    TrustOAuth2JwtGrantIssuer? trustOAuth2JwtGrantIssuer,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/trust/grants/jwt-bearer/issuers';

    // ignore: prefer_final_locals
    Object? postBody = trustOAuth2JwtGrantIssuer;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Trust OAuth2 JWT Bearer Grant Type Issuer
  ///
  /// Use this endpoint to establish a trust relationship for a JWT issuer to perform JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants [RFC7523](https://datatracker.ietf.org/doc/html/rfc7523).
  ///
  /// Parameters:
  ///
  /// * [TrustOAuth2JwtGrantIssuer] trustOAuth2JwtGrantIssuer:
  Future<TrustedOAuth2JwtGrantIssuer?> trustOAuth2JwtGrantIssuer({
    TrustOAuth2JwtGrantIssuer? trustOAuth2JwtGrantIssuer,
  }) async {
    final response = await trustOAuth2JwtGrantIssuerWithHttpInfo(
      trustOAuth2JwtGrantIssuer: trustOAuth2JwtGrantIssuer,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'TrustedOAuth2JwtGrantIssuer',
      ) as TrustedOAuth2JwtGrantIssuer;
    }
    return null;
  }
}
