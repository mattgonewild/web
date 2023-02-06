//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;


class CourierApi {
  CourierApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a Message
  ///
  /// Gets a specific messages by the given ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   MessageID is the ID of the message.
  Future<Response> getCourierMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/courier/messages/{id}'
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

  /// Get a Message
  ///
  /// Gets a specific messages by the given ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   MessageID is the ID of the message.
  Future<Message?> getCourierMessage(String id,) async {
    final response = await getCourierMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Message',) as Message;
    
    }
    return null;
  }

  /// List Messages
  ///
  /// Lists all messages by given status and recipient.
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
  /// * [CourierMessageStatus] status:
  ///   Status filters out messages based on status. If no value is provided, it doesn't take effect on filter.
  ///
  /// * [String] recipient:
  ///   Recipient filters out messages based on recipient. If no value is provided, it doesn't take effect on filter.
  Future<Response> listCourierMessagesWithHttpInfo({ int? pageSize, String? pageToken, CourierMessageStatus? status, String? recipient, }) async {
    // ignore: prefer_const_declarations
    final path = r'/admin/courier/messages';

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
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (recipient != null) {
      queryParams.addAll(_queryParams('', 'recipient', recipient));
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

  /// List Messages
  ///
  /// Lists all messages by given status and recipient.
  ///
  /// Parameters:
  ///
  /// * [int] pageSize:
  ///   Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [String] pageToken:
  ///   Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  ///
  /// * [CourierMessageStatus] status:
  ///   Status filters out messages based on status. If no value is provided, it doesn't take effect on filter.
  ///
  /// * [String] recipient:
  ///   Recipient filters out messages based on recipient. If no value is provided, it doesn't take effect on filter.
  Future<List<Message>?> listCourierMessages({ int? pageSize, String? pageToken, CourierMessageStatus? status, String? recipient, }) async {
    final response = await listCourierMessagesWithHttpInfo( pageSize: pageSize, pageToken: pageToken, status: status, recipient: recipient, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Message>') as List)
        .cast<Message>()
        .toList();

    }
    return null;
  }
}
