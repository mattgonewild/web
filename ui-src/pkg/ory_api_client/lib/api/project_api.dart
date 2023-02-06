//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ProjectApi {
  ProjectApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Project
  ///
  /// Creates a new project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateProjectBody] createProjectBody:
  Future<Response> createProjectWithHttpInfo({
    CreateProjectBody? createProjectBody,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

    // ignore: prefer_final_locals
    Object? postBody = createProjectBody;

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

  /// Create a Project
  ///
  /// Creates a new project.
  ///
  /// Parameters:
  ///
  /// * [CreateProjectBody] createProjectBody:
  Future<Project?> createProject({
    CreateProjectBody? createProjectBody,
  }) async {
    final response = await createProjectWithHttpInfo(
      createProjectBody: createProjectBody,
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
        'Project',
      ) as Project;
    }
    return null;
  }

  /// Create project API token
  ///
  /// Create an API token for a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  ///
  /// * [CreateProjectApiKeyRequest] createProjectApiKeyRequest:
  Future<Response> createProjectApiKeyWithHttpInfo(
    String project, {
    CreateProjectApiKeyRequest? createProjectApiKeyRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/tokens'.replaceAll('{project}', project);

    // ignore: prefer_final_locals
    Object? postBody = createProjectApiKeyRequest;

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

  /// Create project API token
  ///
  /// Create an API token for a project.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  ///
  /// * [CreateProjectApiKeyRequest] createProjectApiKeyRequest:
  Future<ProjectApiKey?> createProjectApiKey(
    String project, {
    CreateProjectApiKeyRequest? createProjectApiKeyRequest,
  }) async {
    final response = await createProjectApiKeyWithHttpInfo(
      project,
      createProjectApiKeyRequest: createProjectApiKeyRequest,
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
        'ProjectApiKey',
      ) as ProjectApiKey;
    }
    return null;
  }

  /// Delete project API token
  ///
  /// Deletes an API token and immediately removes it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  ///
  /// * [String] tokenId (required):
  ///   The Token ID
  Future<Response> deleteProjectApiKeyWithHttpInfo(
    String project,
    String tokenId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/tokens/{token_id}'
        .replaceAll('{project}', project)
        .replaceAll('{token_id}', tokenId);

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

  /// Delete project API token
  ///
  /// Deletes an API token and immediately removes it.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  ///
  /// * [String] tokenId (required):
  ///   The Token ID
  Future<void> deleteProjectApiKey(
    String project,
    String tokenId,
  ) async {
    final response = await deleteProjectApiKeyWithHttpInfo(
      project,
      tokenId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the Ory Network Project selected in the Ory Network Console
  ///
  /// Use this API to get your active project in the Ory Network Console UI.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getActiveProjectInConsoleWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/console/active/project';

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

  /// Returns the Ory Network Project selected in the Ory Network Console
  ///
  /// Use this API to get your active project in the Ory Network Console UI.
  Future<ActiveProjectInConsole?> getActiveProjectInConsole() async {
    final response = await getActiveProjectInConsoleWithHttpInfo();
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
        'ActiveProjectInConsole',
      ) as ActiveProjectInConsole;
    }
    return null;
  }

  /// Get a Project
  ///
  /// Get a projects you have access to by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<Response> getProjectWithHttpInfo(
    String projectId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/projects/{project_id}'.replaceAll('{project_id}', projectId);

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

  /// Get a Project
  ///
  /// Get a projects you have access to by its ID.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<Project?> getProject(
    String projectId,
  ) async {
    final response = await getProjectWithHttpInfo(
      projectId,
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
        'Project',
      ) as Project;
    }
    return null;
  }

  /// Get all members associated with this project
  ///
  /// This endpoint requires the user to be a member of the project with the role `OWNER` or `DEVELOPER`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<Response> getProjectMembersWithHttpInfo(
    String projectId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/projects/{project_id}/members'.replaceAll('{project_id}', projectId);

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

  /// Get all members associated with this project
  ///
  /// This endpoint requires the user to be a member of the project with the role `OWNER` or `DEVELOPER`.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<List<CloudAccount>?> getProjectMembers(
    String projectId,
  ) async {
    final response = await getProjectMembersWithHttpInfo(
      projectId,
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
              responseBody, 'List<CloudAccount>') as List)
          .cast<CloudAccount>()
          .toList();
    }
    return null;
  }

  /// List a project's API Tokens
  ///
  /// A list of all the project's API tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  Future<Response> listProjectApiKeysWithHttpInfo(
    String project,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/tokens'.replaceAll('{project}', project);

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

  /// List a project's API Tokens
  ///
  /// A list of all the project's API tokens.
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///   The Project ID or Project slug
  Future<List<ProjectApiKey>?> listProjectApiKeys(
    String project,
  ) async {
    final response = await listProjectApiKeysWithHttpInfo(
      project,
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
              responseBody, 'List<ProjectApiKey>') as List)
          .cast<ProjectApiKey>()
          .toList();
    }
    return null;
  }

  /// List All Projects
  ///
  /// Lists all projects you have access to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listProjectsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

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

  /// List All Projects
  ///
  /// Lists all projects you have access to.
  Future<List<ProjectMetadata>?> listProjects() async {
    final response = await listProjectsWithHttpInfo();
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
              responseBody, 'List<ProjectMetadata>') as List)
          .cast<ProjectMetadata>()
          .toList();
    }
    return null;
  }

  /// Patch an Ory Network Project Configuration
  ///
  /// Deprecated: Use the `patchProjectWithRevision` endpoint instead to specify the exact revision the patch was generated for.  This endpoints allows you to patch individual Ory Network project configuration keys for Ory's services (identity, permission, ...). The configuration format is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [List<JsonPatch>] jsonPatch:
  Future<Response> patchProjectWithHttpInfo(
    String projectId, {
    List<JsonPatch>? jsonPatch,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/projects/{project_id}'.replaceAll('{project_id}', projectId);

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

  /// Patch an Ory Network Project Configuration
  ///
  /// Deprecated: Use the `patchProjectWithRevision` endpoint instead to specify the exact revision the patch was generated for.  This endpoints allows you to patch individual Ory Network project configuration keys for Ory's services (identity, permission, ...). The configuration format is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [List<JsonPatch>] jsonPatch:
  Future<SuccessfulProjectUpdate?> patchProject(
    String projectId, {
    List<JsonPatch>? jsonPatch,
  }) async {
    final response = await patchProjectWithHttpInfo(
      projectId,
      jsonPatch: jsonPatch,
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
        'SuccessfulProjectUpdate',
      ) as SuccessfulProjectUpdate;
    }
    return null;
  }

  /// Irrecoverably purge a project
  ///
  /// !! Use with extreme caution !!  Using this API endpoint you can purge (completely delete) a project and its data. This action can not be undone and will delete ALL your data.  !! Use with extreme caution !!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<Response> purgeProjectWithHttpInfo(
    String projectId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/projects/{project_id}'.replaceAll('{project_id}', projectId);

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

  /// Irrecoverably purge a project
  ///
  /// !! Use with extreme caution !!  Using this API endpoint you can purge (completely delete) a project and its data. This action can not be undone and will delete ALL your data.  !! Use with extreme caution !!
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  Future<void> purgeProject(
    String projectId,
  ) async {
    final response = await purgeProjectWithHttpInfo(
      projectId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a member associated with this project
  ///
  /// This also sets their invite status to `REMOVED`. This endpoint requires the user to be a member of the project with the role `OWNER`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [String] memberId (required):
  ///   Member ID
  Future<Response> removeProjectMemberWithHttpInfo(
    String projectId,
    String memberId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project_id}/members/{member_id}'
        .replaceAll('{project_id}', projectId)
        .replaceAll('{member_id}', memberId);

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

  /// Remove a member associated with this project
  ///
  /// This also sets their invite status to `REMOVED`. This endpoint requires the user to be a member of the project with the role `OWNER`.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [String] memberId (required):
  ///   Member ID
  Future<void> removeProjectMember(
    String projectId,
    String memberId,
  ) async {
    final response = await removeProjectMemberWithHttpInfo(
      projectId,
      memberId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets the Ory Network Project active in the Ory Network Console
  ///
  /// Use this API to set your active project in the Ory Network Console UI.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetActiveProjectInConsoleBody] setActiveProjectInConsoleBody:
  Future<Response> setActiveProjectInConsoleWithHttpInfo({
    SetActiveProjectInConsoleBody? setActiveProjectInConsoleBody,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/console/active/project';

    // ignore: prefer_final_locals
    Object? postBody = setActiveProjectInConsoleBody;

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

  /// Sets the Ory Network Project active in the Ory Network Console
  ///
  /// Use this API to set your active project in the Ory Network Console UI.
  ///
  /// Parameters:
  ///
  /// * [SetActiveProjectInConsoleBody] setActiveProjectInConsoleBody:
  Future<void> setActiveProjectInConsole({
    SetActiveProjectInConsoleBody? setActiveProjectInConsoleBody,
  }) async {
    final response = await setActiveProjectInConsoleWithHttpInfo(
      setActiveProjectInConsoleBody: setActiveProjectInConsoleBody,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an Ory Network Project Configuration
  ///
  /// This endpoints allows you to update the Ory Network project configuration for individual services (identity, permission, ...). The configuration is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.  Be aware that updating any service's configuration will completely override your current configuration for that service!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [SetProject] setProject:
  Future<Response> setProjectWithHttpInfo(
    String projectId, {
    SetProject? setProject,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/projects/{project_id}'.replaceAll('{project_id}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = setProject;

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

  /// Update an Ory Network Project Configuration
  ///
  /// This endpoints allows you to update the Ory Network project configuration for individual services (identity, permission, ...). The configuration is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.  Be aware that updating any service's configuration will completely override your current configuration for that service!
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Project ID  The project's ID.
  ///
  /// * [SetProject] setProject:
  Future<SuccessfulProjectUpdate?> setProject(
    String projectId, {
    SetProject? setProject,
  }) async {
    final response = await setProjectWithHttpInfo(
      projectId,
      setProject: setProject,
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
        'SuccessfulProjectUpdate',
      ) as SuccessfulProjectUpdate;
    }
    return null;
  }
}
