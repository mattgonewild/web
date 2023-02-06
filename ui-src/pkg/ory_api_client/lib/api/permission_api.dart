//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class PermissionApi {
  PermissionApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
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
  ///
  /// * [int] maxDepth:
  Future<Response> checkPermissionWithHttpInfo({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
    int? maxDepth,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples/check/openapi';

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
    if (maxDepth != null) {
      queryParams.addAll(_queryParams('', 'max-depth', maxDepth));
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

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
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
  ///
  /// * [int] maxDepth:
  Future<CheckPermissionResult?> checkPermission({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
    int? maxDepth,
  }) async {
    final response = await checkPermissionWithHttpInfo(
      namespace: namespace,
      object: object,
      relation: relation,
      subjectId: subjectId,
      subjectSetPeriodNamespace: subjectSetPeriodNamespace,
      subjectSetPeriodObject: subjectSetPeriodObject,
      subjectSetPeriodRelation: subjectSetPeriodRelation,
      maxDepth: maxDepth,
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
        'CheckPermissionResult',
      ) as CheckPermissionResult;
    }
    return null;
  }

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
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
  ///
  /// * [int] maxDepth:
  Future<Response> checkPermissionOrErrorWithHttpInfo({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
    int? maxDepth,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples/check';

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
    if (maxDepth != null) {
      queryParams.addAll(_queryParams('', 'max-depth', maxDepth));
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

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
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
  ///
  /// * [int] maxDepth:
  Future<CheckPermissionResult?> checkPermissionOrError({
    String? namespace,
    String? object,
    String? relation,
    String? subjectId,
    String? subjectSetPeriodNamespace,
    String? subjectSetPeriodObject,
    String? subjectSetPeriodRelation,
    int? maxDepth,
  }) async {
    final response = await checkPermissionOrErrorWithHttpInfo(
      namespace: namespace,
      object: object,
      relation: relation,
      subjectId: subjectId,
      subjectSetPeriodNamespace: subjectSetPeriodNamespace,
      subjectSetPeriodObject: subjectSetPeriodObject,
      subjectSetPeriodRelation: subjectSetPeriodRelation,
      maxDepth: maxDepth,
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
        'CheckPermissionResult',
      ) as CheckPermissionResult;
    }
    return null;
  }

  /// Expand a Relationship into permissions.
  ///
  /// Use this endpoint to expand a relationship tuple into permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace of the Subject Set
  ///
  /// * [String] object (required):
  ///   Object of the Subject Set
  ///
  /// * [String] relation (required):
  ///   Relation of the Subject Set
  ///
  /// * [int] maxDepth:
  Future<Response> expandPermissionsWithHttpInfo(
    String namespace,
    String object,
    String relation, {
    int? maxDepth,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples/expand';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'namespace', namespace));
    queryParams.addAll(_queryParams('', 'object', object));
    queryParams.addAll(_queryParams('', 'relation', relation));
    if (maxDepth != null) {
      queryParams.addAll(_queryParams('', 'max-depth', maxDepth));
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

  /// Expand a Relationship into permissions.
  ///
  /// Use this endpoint to expand a relationship tuple into permissions.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   Namespace of the Subject Set
  ///
  /// * [String] object (required):
  ///   Object of the Subject Set
  ///
  /// * [String] relation (required):
  ///   Relation of the Subject Set
  ///
  /// * [int] maxDepth:
  Future<ExpandedPermissionTree?> expandPermissions(
    String namespace,
    String object,
    String relation, {
    int? maxDepth,
  }) async {
    final response = await expandPermissionsWithHttpInfo(
      namespace,
      object,
      relation,
      maxDepth: maxDepth,
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
        'ExpandedPermissionTree',
      ) as ExpandedPermissionTree;
    }
    return null;
  }

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxDepth:
  ///
  /// * [PostCheckPermissionBody] postCheckPermissionBody:
  Future<Response> postCheckPermissionWithHttpInfo({
    int? maxDepth,
    PostCheckPermissionBody? postCheckPermissionBody,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples/check/openapi';

    // ignore: prefer_final_locals
    Object? postBody = postCheckPermissionBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxDepth != null) {
      queryParams.addAll(_queryParams('', 'max-depth', maxDepth));
    }

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

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  ///
  /// Parameters:
  ///
  /// * [int] maxDepth:
  ///
  /// * [PostCheckPermissionBody] postCheckPermissionBody:
  Future<CheckPermissionResult?> postCheckPermission({
    int? maxDepth,
    PostCheckPermissionBody? postCheckPermissionBody,
  }) async {
    final response = await postCheckPermissionWithHttpInfo(
      maxDepth: maxDepth,
      postCheckPermissionBody: postCheckPermissionBody,
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
        'CheckPermissionResult',
      ) as CheckPermissionResult;
    }
    return null;
  }

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxDepth:
  ///
  /// * [PostCheckPermissionOrErrorBody] postCheckPermissionOrErrorBody:
  Future<Response> postCheckPermissionOrErrorWithHttpInfo({
    int? maxDepth,
    PostCheckPermissionOrErrorBody? postCheckPermissionOrErrorBody,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/relation-tuples/check';

    // ignore: prefer_final_locals
    Object? postBody = postCheckPermissionOrErrorBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxDepth != null) {
      queryParams.addAll(_queryParams('', 'max-depth', maxDepth));
    }

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

  /// Check a permission
  ///
  /// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  ///
  /// Parameters:
  ///
  /// * [int] maxDepth:
  ///
  /// * [PostCheckPermissionOrErrorBody] postCheckPermissionOrErrorBody:
  Future<CheckPermissionResult?> postCheckPermissionOrError({
    int? maxDepth,
    PostCheckPermissionOrErrorBody? postCheckPermissionOrErrorBody,
  }) async {
    final response = await postCheckPermissionOrErrorWithHttpInfo(
      maxDepth: maxDepth,
      postCheckPermissionOrErrorBody: postCheckPermissionOrErrorBody,
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
        'CheckPermissionResult',
      ) as CheckPermissionResult;
    }
    return null;
  }
}
