//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class RelationshipApi {
  RelationshipApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check the syntax of an OPL file
  ///
  /// The OPL file is expected in the body of the request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] body:
  Future<Response> checkOplSyntaxWithHttpInfo({
    String? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/opl/syntax/check';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['text/plain'];

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

  /// Check the syntax of an OPL file
  ///
  /// The OPL file is expected in the body of the request.
  ///
  /// Parameters:
  ///
  /// * [String] body:
  Future<CheckOplSyntaxResult?> checkOplSyntax({
    String? body,
  }) async {
    final response = await checkOplSyntaxWithHttpInfo(
      body: body,
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
        'CheckOplSyntaxResult',
      ) as CheckOplSyntaxResult;
    }
    return null;
  }

  /// Create a Relationship
  ///
  /// Use this endpoint to create a relationship.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRelationshipBody] createRelationshipBody:
  Future<Response> createRelationshipWithHttpInfo({
    CreateRelationshipBody? createRelationshipBody,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/relation-tuples';

    // ignore: prefer_final_locals
    Object? postBody = createRelationshipBody;

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

  /// Create a Relationship
  ///
  /// Use this endpoint to create a relationship.
  ///
  /// Parameters:
  ///
  /// * [CreateRelationshipBody] createRelationshipBody:
  Future<Relationship?> createRelationship({
    CreateRelationshipBody? createRelationshipBody,
  }) async {
    final response = await createRelationshipWithHttpInfo(
      createRelationshipBody: createRelationshipBody,
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
        'Relationship',
      ) as Relationship;
    }
    return null;
  }

  /// Delete Relationships
  ///
  /// Use this endpoint to delete relationships
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace:
  ///   Namespace of the Relationship
  ///
  /// * [String] object:
  ///   Object of the Relationship
  ///
  /// * [String] relation:
  ///   Relation of the Relationship
  ///
  /// * [String] subjectId:
  ///   SubjectID of the Relationship
  ///
  /// * [String] subjectSetPeriodNamespace:
  ///   Namespace of the Subject Set
  ///
  /// * [String] subjectSetPeriodObject:
  ///   Object of the Subject Set
  ///
  /// * [String] subjectSetPeriodRelation:
  ///   Relation of the Subject Set
  Future<Response> deleteRelationshipsWithHttpInfo({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/relation-tuples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (object != null) {
      queryParams.addAll(_queryParams('', 'object', object));
    }
    if (relation != null) {
      queryParams.addAll(_queryParams('', 'relation', relation));
    }
    if (subjectId != null) {
      queryParams.addAll(_queryParams('', 'subject_id', subjectId));
    }
    if (subjectSetPeriodNamespace != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.namespace', subjectSetPeriodNamespace));
    }
    if (subjectSetPeriodObject != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.object', subjectSetPeriodObject));
    }
    if (subjectSetPeriodRelation != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.relation', subjectSetPeriodRelation));
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

  /// Delete Relationships
  ///
  /// Use this endpoint to delete relationships
  ///
  /// Parameters:
  ///
  /// * [String] namespace:
  ///   Namespace of the Relationship
  ///
  /// * [String] object:
  ///   Object of the Relationship
  ///
  /// * [String] relation:
  ///   Relation of the Relationship
  ///
  /// * [String] subjectId:
  ///   SubjectID of the Relationship
  ///
  /// * [String] subjectSetPeriodNamespace:
  ///   Namespace of the Subject Set
  ///
  /// * [String] subjectSetPeriodObject:
  ///   Object of the Subject Set
  ///
  /// * [String] subjectSetPeriodRelation:
  ///   Relation of the Subject Set
  Future<void> deleteRelationships({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
  }) async {
    final response = await deleteRelationshipsWithHttpInfo(
      namespace: namespace,
      object: object,
      relation: relation,
      subjectId: subjectId,
      subjectSetPeriodNamespace: subjectSetPeriodNamespace,
      subjectSetPeriodObject: subjectSetPeriodObject,
      subjectSetPeriodRelation: subjectSetPeriodRelation,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Query relationships
  ///
  /// Get all relationships that match the query. Only the namespace field is required.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] namespace:
  ///   Namespace of the Relationship
  ///
  /// * [String] object:
  ///   Object of the Relationship
  ///
  /// * [String] relation:
  ///   Relation of the Relationship
  ///
  /// * [String] subjectId:
  ///   SubjectID of the Relationship
  ///
  /// * [String] subjectSetPeriodNamespace:
  ///   Namespace of the Subject Set
  ///
  /// * [String] subjectSetPeriodObject:
  ///   Object of the Subject Set
  ///
  /// * [String] subjectSetPeriodRelation:
  ///   Relation of the Subject Set
  Future<Response> getRelationshipsWithHttpInfo({
    String? pageToken,
    int? pageSize,
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageToken != null) {
      queryParams.addAll(_queryParams('', 'page_token', pageToken));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'page_size', pageSize));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (object != null) {
      queryParams.addAll(_queryParams('', 'object', object));
    }
    if (relation != null) {
      queryParams.addAll(_queryParams('', 'relation', relation));
    }
    if (subjectId != null) {
      queryParams.addAll(_queryParams('', 'subject_id', subjectId));
    }
    if (subjectSetPeriodNamespace != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.namespace', subjectSetPeriodNamespace));
    }
    if (subjectSetPeriodObject != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.object', subjectSetPeriodObject));
    }
    if (subjectSetPeriodRelation != null) {
      queryParams.addAll(
          _queryParams('', 'subject_set.relation', subjectSetPeriodRelation));
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

  /// Query relationships
  ///
  /// Get all relationships that match the query. Only the namespace field is required.
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] namespace:
  ///   Namespace of the Relationship
  ///
  /// * [String] object:
  ///   Object of the Relationship
  ///
  /// * [String] relation:
  ///   Relation of the Relationship
  ///
  /// * [String] subjectId:
  ///   SubjectID of the Relationship
  ///
  /// * [String] subjectSetPeriodNamespace:
  ///   Namespace of the Subject Set
  ///
  /// * [String] subjectSetPeriodObject:
  ///   Object of the Subject Set
  ///
  /// * [String] subjectSetPeriodRelation:
  ///   Relation of the Subject Set
  Future<Relationships?> getRelationships({
    String? pageToken,
    int? pageSize,
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
  }) async {
    final response = await getRelationshipsWithHttpInfo(
      pageToken: pageToken,
      pageSize: pageSize,
      namespace: namespace,
      object: object,
      relation: relation,
      subjectId: subjectId,
      subjectSetPeriodNamespace: subjectSetPeriodNamespace,
      subjectSetPeriodObject: subjectSetPeriodObject,
      subjectSetPeriodRelation: subjectSetPeriodRelation,
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
        'Relationships',
      ) as Relationships;
    }
    return null;
  }

  /// Query namespaces
  ///
  /// Get all namespaces
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listRelationshipNamespacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/namespaces';

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

  /// Query namespaces
  ///
  /// Get all namespaces
  Future<RelationshipNamespaces?> listRelationshipNamespaces() async {
    final response = await listRelationshipNamespacesWithHttpInfo();
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
        'RelationshipNamespaces',
      ) as RelationshipNamespaces;
    }
    return null;
  }

  /// Patch Multiple Relationships
  ///
  /// Use this endpoint to patch one or more relationships.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<RelationshipPatch>] relationshipPatch:
  Future<Response> patchRelationshipsWithHttpInfo({
    List<RelationshipPatch>? relationshipPatch,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/relation-tuples';

    // ignore: prefer_final_locals
    Object? postBody = relationshipPatch;

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

  /// Patch Multiple Relationships
  ///
  /// Use this endpoint to patch one or more relationships.
  ///
  /// Parameters:
  ///
  /// * [List<RelationshipPatch>] relationshipPatch:
  Future<void> patchRelationships({
    List<RelationshipPatch>? relationshipPatch,
  }) async {
    final response = await patchRelationshipsWithHttpInfo(
      relationshipPatch: relationshipPatch,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
