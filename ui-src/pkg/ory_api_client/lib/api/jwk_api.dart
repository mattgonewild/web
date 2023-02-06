//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;


class JwkApi {
  JwkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create JSON Web Key
  ///
  /// This endpoint is capable of generating JSON Web Key Sets for you. There a different strategies available, such as symmetric cryptographic keys (HS256, HS512) and asymetric cryptographic keys (RS256, ECDSA). If the specified JSON Web Key Set does not exist, it will be created.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [CreateJsonWebKeySet] createJsonWebKeySet (required):
  Future<Response> createJsonWebKeySetWithHttpInfo(String set_, CreateJsonWebKeySet createJsonWebKeySet,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody = createJsonWebKeySet;

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

  /// Create JSON Web Key
  ///
  /// This endpoint is capable of generating JSON Web Key Sets for you. There a different strategies available, such as symmetric cryptographic keys (HS256, HS512) and asymetric cryptographic keys (RS256, ECDSA). If the specified JSON Web Key Set does not exist, it will be created.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [CreateJsonWebKeySet] createJsonWebKeySet (required):
  Future<JsonWebKeySet?> createJsonWebKeySet(String set_, CreateJsonWebKeySet createJsonWebKeySet,) async {
    final response = await createJsonWebKeySetWithHttpInfo(set_, createJsonWebKeySet,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKeySet',) as JsonWebKeySet;
    
    }
    return null;
  }

  /// Delete JSON Web Key
  ///
  /// Use this endpoint to delete a single JSON Web Key.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set
  ///
  /// * [String] kid (required):
  ///   The JSON Web Key ID (kid)
  Future<Response> deleteJsonWebKeyWithHttpInfo(String set_, String kid,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}/{kid}'
      .replaceAll('{set}', set_)
      .replaceAll('{kid}', kid);

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

  /// Delete JSON Web Key
  ///
  /// Use this endpoint to delete a single JSON Web Key.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set
  ///
  /// * [String] kid (required):
  ///   The JSON Web Key ID (kid)
  Future<void> deleteJsonWebKey(String set_, String kid,) async {
    final response = await deleteJsonWebKeyWithHttpInfo(set_, kid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete JSON Web Key Set
  ///
  /// Use this endpoint to delete a complete JSON Web Key Set and all the keys in that set.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set
  Future<Response> deleteJsonWebKeySetWithHttpInfo(String set_,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}'
      .replaceAll('{set}', set_);

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

  /// Delete JSON Web Key Set
  ///
  /// Use this endpoint to delete a complete JSON Web Key Set and all the keys in that set.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set
  Future<void> deleteJsonWebKeySet(String set_,) async {
    final response = await deleteJsonWebKeySetWithHttpInfo(set_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get JSON Web Key
  ///
  /// This endpoint returns a singular JSON Web Key contained in a set. It is identified by the set and the specific key ID (kid).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   JSON Web Key Set ID
  ///
  /// * [String] kid (required):
  ///   JSON Web Key ID
  Future<Response> getJsonWebKeyWithHttpInfo(String set_, String kid,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}/{kid}'
      .replaceAll('{set}', set_)
      .replaceAll('{kid}', kid);

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

  /// Get JSON Web Key
  ///
  /// This endpoint returns a singular JSON Web Key contained in a set. It is identified by the set and the specific key ID (kid).
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   JSON Web Key Set ID
  ///
  /// * [String] kid (required):
  ///   JSON Web Key ID
  Future<JsonWebKeySet?> getJsonWebKey(String set_, String kid,) async {
    final response = await getJsonWebKeyWithHttpInfo(set_, kid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKeySet',) as JsonWebKeySet;
    
    }
    return null;
  }

  /// Retrieve a JSON Web Key Set
  ///
  /// This endpoint can be used to retrieve JWK Sets stored in ORY Hydra.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   JSON Web Key Set ID
  Future<Response> getJsonWebKeySetWithHttpInfo(String set_,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}'
      .replaceAll('{set}', set_);

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

  /// Retrieve a JSON Web Key Set
  ///
  /// This endpoint can be used to retrieve JWK Sets stored in ORY Hydra.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   JSON Web Key Set ID
  Future<JsonWebKeySet?> getJsonWebKeySet(String set_,) async {
    final response = await getJsonWebKeySetWithHttpInfo(set_,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKeySet',) as JsonWebKeySet;
    
    }
    return null;
  }

  /// Set JSON Web Key
  ///
  /// Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [String] kid (required):
  ///   JSON Web Key ID
  ///
  /// * [JsonWebKey] jsonWebKey:
  Future<Response> setJsonWebKeyWithHttpInfo(String set_, String kid, { JsonWebKey? jsonWebKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}/{kid}'
      .replaceAll('{set}', set_)
      .replaceAll('{kid}', kid);

    // ignore: prefer_final_locals
    Object? postBody = jsonWebKey;

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

  /// Set JSON Web Key
  ///
  /// Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [String] kid (required):
  ///   JSON Web Key ID
  ///
  /// * [JsonWebKey] jsonWebKey:
  Future<JsonWebKey?> setJsonWebKey(String set_, String kid, { JsonWebKey? jsonWebKey, }) async {
    final response = await setJsonWebKeyWithHttpInfo(set_, kid,  jsonWebKey: jsonWebKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKey',) as JsonWebKey;
    
    }
    return null;
  }

  /// Update a JSON Web Key Set
  ///
  /// Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [JsonWebKeySet] jsonWebKeySet:
  Future<Response> setJsonWebKeySetWithHttpInfo(String set_, { JsonWebKeySet? jsonWebKeySet, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/keys/{set}'
      .replaceAll('{set}', set_);

    // ignore: prefer_final_locals
    Object? postBody = jsonWebKeySet;

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

  /// Update a JSON Web Key Set
  ///
  /// Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
  ///
  /// Parameters:
  ///
  /// * [String] set_ (required):
  ///   The JSON Web Key Set ID
  ///
  /// * [JsonWebKeySet] jsonWebKeySet:
  Future<JsonWebKeySet?> setJsonWebKeySet(String set_, { JsonWebKeySet? jsonWebKeySet, }) async {
    final response = await setJsonWebKeySetWithHttpInfo(set_,  jsonWebKeySet: jsonWebKeySet, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKeySet',) as JsonWebKeySet;
    
    }
    return null;
  }
}
