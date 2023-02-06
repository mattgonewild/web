//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;


class IdentityApi {
  IdentityApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an Identity
  ///
  /// Create an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model).  This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateIdentityBody] createIdentityBody:
  Future<Response> createIdentityWithHttpInfo({ CreateIdentityBody? createIdentityBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities';

    // ignore: prefer_final_locals
    Object? postBody = createIdentityBody;

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

  /// Create an Identity
  ///
  /// Create an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model).  This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.
  ///
  /// Parameters:
  ///
  /// * [CreateIdentityBody] createIdentityBody:
  Future<Identity?> createIdentity({ CreateIdentityBody? createIdentityBody, }) async {
    final response = await createIdentityWithHttpInfo( createIdentityBody: createIdentityBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Identity',) as Identity;
    
    }
    return null;
  }

  /// Create a Recovery Code
  ///
  /// This endpoint creates a recovery code which should be given to the user in order for them to recover (or activate) their account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRecoveryCodeForIdentityBody] createRecoveryCodeForIdentityBody:
  Future<Response> createRecoveryCodeForIdentityWithHttpInfo({ CreateRecoveryCodeForIdentityBody? createRecoveryCodeForIdentityBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/recovery/code';

    // ignore: prefer_final_locals
    Object? postBody = createRecoveryCodeForIdentityBody;

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

  /// Create a Recovery Code
  ///
  /// This endpoint creates a recovery code which should be given to the user in order for them to recover (or activate) their account.
  ///
  /// Parameters:
  ///
  /// * [CreateRecoveryCodeForIdentityBody] createRecoveryCodeForIdentityBody:
  Future<RecoveryCodeForIdentity?> createRecoveryCodeForIdentity({ CreateRecoveryCodeForIdentityBody? createRecoveryCodeForIdentityBody, }) async {
    final response = await createRecoveryCodeForIdentityWithHttpInfo( createRecoveryCodeForIdentityBody: createRecoveryCodeForIdentityBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecoveryCodeForIdentity',) as RecoveryCodeForIdentity;
    
    }
    return null;
  }

  /// Create a Recovery Link
  ///
  /// This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRecoveryLinkForIdentityBody] createRecoveryLinkForIdentityBody:
  Future<Response> createRecoveryLinkForIdentityWithHttpInfo({ CreateRecoveryLinkForIdentityBody? createRecoveryLinkForIdentityBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/recovery/link';

    // ignore: prefer_final_locals
    Object? postBody = createRecoveryLinkForIdentityBody;

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

  /// Create a Recovery Link
  ///
  /// This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.
  ///
  /// Parameters:
  ///
  /// * [CreateRecoveryLinkForIdentityBody] createRecoveryLinkForIdentityBody:
  Future<RecoveryLinkForIdentity?> createRecoveryLinkForIdentity({ CreateRecoveryLinkForIdentityBody? createRecoveryLinkForIdentityBody, }) async {
    final response = await createRecoveryLinkForIdentityWithHttpInfo( createRecoveryLinkForIdentityBody: createRecoveryLinkForIdentityBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecoveryLinkForIdentity',) as RecoveryLinkForIdentity;
    
    }
    return null;
  }

  /// Delete an Identity
  ///
  /// Calling this endpoint irrecoverably and permanently deletes the [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) given its ID. This action can not be undone. This endpoint returns 204 when the identity was deleted or when the identity was not found, in which case it is assumed that is has been deleted already.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  Future<Response> deleteIdentityWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}'
      .replaceAll('{id}', id);

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

  /// Delete an Identity
  ///
  /// Calling this endpoint irrecoverably and permanently deletes the [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) given its ID. This action can not be undone. This endpoint returns 204 when the identity was deleted or when the identity was not found, in which case it is assumed that is has been deleted already.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  Future<void> deleteIdentity(String id,) async {
    final response = await deleteIdentityWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete & Invalidate an Identity's Sessions
  ///
  /// Calling this endpoint irrecoverably and permanently deletes and invalidates all sessions that belong to the given Identity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  Future<Response> deleteIdentitySessionsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}/sessions'
      .replaceAll('{id}', id);

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

  /// Delete & Invalidate an Identity's Sessions
  ///
  /// Calling this endpoint irrecoverably and permanently deletes and invalidates all sessions that belong to the given Identity.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  Future<void> deleteIdentitySessions(String id,) async {
    final response = await deleteIdentitySessionsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deactivate a Session
  ///
  /// Calling this endpoint deactivates the specified session. Session data is not deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  Future<Response> disableSessionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/sessions/{id}'
      .replaceAll('{id}', id);

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

  /// Deactivate a Session
  ///
  /// Calling this endpoint deactivates the specified session. Session data is not deleted.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  Future<void> disableSession(String id,) async {
    final response = await disableSessionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Extend a Session
  ///
  /// Calling this endpoint extends the given session ID. If `session.earliest_possible_extend` is set it will only extend the session after the specified time has passed.  Retrieve the session ID from the `/sessions/whoami` endpoint / `toSession` SDK method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  Future<Response> extendSessionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/sessions/{id}/extend'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Extend a Session
  ///
  /// Calling this endpoint extends the given session ID. If `session.earliest_possible_extend` is set it will only extend the session after the specified time has passed.  Retrieve the session ID from the `/sessions/whoami` endpoint / `toSession` SDK method.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  Future<Session?> extendSession(String id,) async {
    final response = await extendSessionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Session',) as Session;
    
    }
    return null;
  }

  /// Get an Identity
  ///
  /// Return an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) by its ID. You can optionally include credentials (e.g. social sign in connections) in the response by using the `include_credential` query parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to get
  ///
  /// * [List<String>] includeCredential:
  ///   Include Credentials in Response  Currently, only `oidc` is supported. This will return the initial OAuth 2.0 Access, Refresh and (optionally) OpenID Connect ID Token.
  Future<Response> getIdentityWithHttpInfo(String id, { List<String>? includeCredential, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeCredential != null) {
      queryParams.addAll(_queryParams('multi', 'include_credential', includeCredential));
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

  /// Get an Identity
  ///
  /// Return an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) by its ID. You can optionally include credentials (e.g. social sign in connections) in the response by using the `include_credential` query parameter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to get
  ///
  /// * [List<String>] includeCredential:
  ///   Include Credentials in Response  Currently, only `oidc` is supported. This will return the initial OAuth 2.0 Access, Refresh and (optionally) OpenID Connect ID Token.
  Future<Identity?> getIdentity(String id, { List<String>? includeCredential, }) async {
    final response = await getIdentityWithHttpInfo(id,  includeCredential: includeCredential, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Identity',) as Identity;
    
    }
    return null;
  }

  /// Get Identity JSON Schema
  ///
  /// Return a specific identity schema.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of schema you want to get
  Future<Response> getIdentitySchemaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/schemas/{id}'
      .replaceAll('{id}', id);

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

  /// Get Identity JSON Schema
  ///
  /// Return a specific identity schema.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of schema you want to get
  Future<Object?> getIdentitySchema(String id,) async {
    final response = await getIdentitySchemaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get Session
  ///
  /// This endpoint is useful for:  Getting a session object with all specified expandables that exist in an administrative context.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  ///
  /// * [List<String>] expand:
  ///   ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. Example - ?expand=Identity&expand=Devices If no value is provided, the expandable properties are skipped.
  Future<Response> getSessionWithHttpInfo(String id, { List<String>? expand, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/sessions/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expand != null) {
      queryParams.addAll(_queryParams('multi', 'expand', expand));
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

  /// Get Session
  ///
  /// This endpoint is useful for:  Getting a session object with all specified expandables that exist in an administrative context.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the session's ID.
  ///
  /// * [List<String>] expand:
  ///   ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. Example - ?expand=Identity&expand=Devices If no value is provided, the expandable properties are skipped.
  Future<Session?> getSession(String id, { List<String>? expand, }) async {
    final response = await getSessionWithHttpInfo(id,  expand: expand, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Session',) as Session;
    
    }
    return null;
  }

  /// List Identities
  ///
  /// Lists all [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model) in the system.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  Future<Response> listIdentitiesWithHttpInfo({ int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// List Identities
  ///
  /// Lists all [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model) in the system.
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  Future<List<Identity>?> listIdentities({ int? perPage, int? page, }) async {
    final response = await listIdentitiesWithHttpInfo( perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Identity>') as List)
        .cast<Identity>()
        .toList();

    }
    return null;
  }

  /// Get all Identity Schemas
  ///
  /// Returns a list of all identity schemas currently in use.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  Future<Response> listIdentitySchemasWithHttpInfo({ int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/schemas';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Get all Identity Schemas
  ///
  /// Returns a list of all identity schemas currently in use.
  ///
  /// Parameters:
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  Future<List<IdentitySchemaContainer>?> listIdentitySchemas({ int? perPage, int? page, }) async {
    final response = await listIdentitySchemasWithHttpInfo( perPage: perPage, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdentitySchemaContainer>') as List)
        .cast<IdentitySchemaContainer>()
        .toList();

    }
    return null;
  }

  /// List an Identity's Sessions
  ///
  /// This endpoint returns all sessions that belong to the given Identity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  ///
  /// * [bool] active:
  ///   Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned.
  Future<Response> listIdentitySessionsWithHttpInfo(String id, { int? perPage, int? page, bool? active, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}/sessions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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

  /// List an Identity's Sessions
  ///
  /// This endpoint returns all sessions that belong to the given Identity.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID is the identity's ID.
  ///
  /// * [int] perPage:
  ///   Items per Page  This is the number of items per page.
  ///
  /// * [int] page:
  ///   Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  ///
  /// * [bool] active:
  ///   Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned.
  Future<List<Session>?> listIdentitySessions(String id, { int? perPage, int? page, bool? active, }) async {
    final response = await listIdentitySessionsWithHttpInfo(id,  perPage: perPage, page: page, active: active, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Session>') as List)
        .cast<Session>()
        .toList();

    }
    return null;
  }

  /// List All Sessions
  ///
  /// Listing all sessions that exist.
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
  /// * [bool] active:
  ///   Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned.
  ///
  /// * [List<String>] expand:
  ///   ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. If no value is provided, the expandable properties are skipped.
  Future<Response> listSessionsWithHttpInfo({ int? pageSize, String? pageToken, bool? active, List<String>? expand, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/sessions';

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
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (expand != null) {
      queryParams.addAll(_queryParams('multi', 'expand', expand));
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

  /// List All Sessions
  ///
  /// Listing all sessions that exist.
  ///
  /// Parameters:
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [bool] active:
  ///   Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned.
  ///
  /// * [List<String>] expand:
  ///   ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. If no value is provided, the expandable properties are skipped.
  Future<List<Session>?> listSessions({ int? pageSize, String? pageToken, bool? active, List<String>? expand, }) async {
    final response = await listSessionsWithHttpInfo( pageSize: pageSize, pageToken: pageToken, active: active, expand: expand, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Session>') as List)
        .cast<Session>()
        .toList();

    }
    return null;
  }

  /// Patch an Identity
  ///
  /// Partially updates an [identity's](https://www.ory.sh/docs/kratos/concepts/identity-user-model) field using [JSON Patch](https://jsonpatch.com/). The fields `id`, `stateChangedAt` and `credentials` can not be updated using this method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to update
  ///
  /// * [List<JsonPatch>] jsonPatch:
  Future<Response> patchIdentityWithHttpInfo(String id, { List<JsonPatch>? jsonPatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}'
      .replaceAll('{id}', id);

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

  /// Patch an Identity
  ///
  /// Partially updates an [identity's](https://www.ory.sh/docs/kratos/concepts/identity-user-model) field using [JSON Patch](https://jsonpatch.com/). The fields `id`, `stateChangedAt` and `credentials` can not be updated using this method.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to update
  ///
  /// * [List<JsonPatch>] jsonPatch:
  Future<Identity?> patchIdentity(String id, { List<JsonPatch>? jsonPatch, }) async {
    final response = await patchIdentityWithHttpInfo(id,  jsonPatch: jsonPatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Identity',) as Identity;
    
    }
    return null;
  }

  /// Update an Identity
  ///
  /// This endpoint updates an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model). The full identity payload (except credentials) is expected. It is possible to update the identity's credentials as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to update
  ///
  /// * [UpdateIdentityBody] updateIdentityBody:
  Future<Response> updateIdentityWithHttpInfo(String id, { UpdateIdentityBody? updateIdentityBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/identities/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateIdentityBody;

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

  /// Update an Identity
  ///
  /// This endpoint updates an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model). The full identity payload (except credentials) is expected. It is possible to update the identity's credentials as well.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID must be set to the ID of identity you want to update
  ///
  /// * [UpdateIdentityBody] updateIdentityBody:
  Future<Identity?> updateIdentity(String id, { UpdateIdentityBody? updateIdentityBody, }) async {
    final response = await updateIdentityWithHttpInfo(id,  updateIdentityBody: updateIdentityBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Identity',) as Identity;
    
    }
    return null;
  }
}
