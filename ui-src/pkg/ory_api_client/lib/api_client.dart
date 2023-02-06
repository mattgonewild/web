//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ApiClient {
  ApiClient({
    this.basePath = 'https://playground.projects.oryapis.com',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } catch (e) {
      print(e);
    }
    throw ('shoot.');
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AcceptOAuth2ConsentRequest':
          return AcceptOAuth2ConsentRequest.fromJson(value);
        case 'AcceptOAuth2ConsentRequestSession':
          return AcceptOAuth2ConsentRequestSession.fromJson(value);
        case 'AcceptOAuth2LoginRequest':
          return AcceptOAuth2LoginRequest.fromJson(value);
        case 'ActiveProjectInConsole':
          return ActiveProjectInConsole.fromJson(value);
        case 'AuthenticatorAssuranceLevel':
          return AuthenticatorAssuranceLevelTypeTransformer().decode(value);
        case 'CheckOplSyntaxResult':
          return CheckOplSyntaxResult.fromJson(value);
        case 'CheckPermissionResult':
          return CheckPermissionResult.fromJson(value);
        case 'CloudAccount':
          return CloudAccount.fromJson(value);
        case 'CourierMessageStatus':
          return CourierMessageStatusTypeTransformer().decode(value);
        case 'CourierMessageType':
          return CourierMessageTypeTypeTransformer().decode(value);
        case 'CreateCustomDomainBody':
          return CreateCustomDomainBody.fromJson(value);
        case 'CreateIdentityBody':
          return CreateIdentityBody.fromJson(value);
        case 'CreateJsonWebKeySet':
          return CreateJsonWebKeySet.fromJson(value);
        case 'CreateProjectApiKeyRequest':
          return CreateProjectApiKeyRequest.fromJson(value);
        case 'CreateProjectBody':
          return CreateProjectBody.fromJson(value);
        case 'CreateProjectBranding':
          return CreateProjectBranding.fromJson(value);
        case 'CreateProjectInvite':
          return CreateProjectInvite.fromJson(value);
        case 'CreateRecoveryCodeForIdentityBody':
          return CreateRecoveryCodeForIdentityBody.fromJson(value);
        case 'CreateRecoveryLinkForIdentityBody':
          return CreateRecoveryLinkForIdentityBody.fromJson(value);
        case 'CreateRelationshipBody':
          return CreateRelationshipBody.fromJson(value);
        case 'CreateSubscriptionBody':
          return CreateSubscriptionBody.fromJson(value);
        case 'CustomDomain':
          return CustomDomain.fromJson(value);
        case 'CustomDomainQuota':
          return CustomDomainQuota.fromJson(value);
        case 'DeleteMySessionsCount':
          return DeleteMySessionsCount.fromJson(value);
        case 'ErrorAuthenticatorAssuranceLevelNotSatisfied':
          return ErrorAuthenticatorAssuranceLevelNotSatisfied.fromJson(value);
        case 'ErrorBrowserLocationChangeRequired':
          return ErrorBrowserLocationChangeRequired.fromJson(value);
        case 'ErrorFlowReplaced':
          return ErrorFlowReplaced.fromJson(value);
        case 'ErrorGeneric':
          return ErrorGeneric.fromJson(value);
        case 'ErrorOAuth2':
          return ErrorOAuth2.fromJson(value);
        case 'ExpandedPermissionTree':
          return ExpandedPermissionTree.fromJson(value);
        case 'FlowError':
          return FlowError.fromJson(value);
        case 'GenericError':
          return GenericError.fromJson(value);
        case 'GenericErrorContent':
          return GenericErrorContent.fromJson(value);
        case 'GetManagedIdentitySchemaLocation':
          return GetManagedIdentitySchemaLocation.fromJson(value);
        case 'GetVersion200Response':
          return GetVersion200Response.fromJson(value);
        case 'HealthNotReadyStatus':
          return HealthNotReadyStatus.fromJson(value);
        case 'HealthStatus':
          return HealthStatus.fromJson(value);
        case 'Identity':
          return Identity.fromJson(value);
        case 'IdentityCredentials':
          return IdentityCredentials.fromJson(value);
        case 'IdentityCredentialsOidc':
          return IdentityCredentialsOidc.fromJson(value);
        case 'IdentityCredentialsOidcProvider':
          return IdentityCredentialsOidcProvider.fromJson(value);
        case 'IdentityCredentialsPassword':
          return IdentityCredentialsPassword.fromJson(value);
        case 'IdentityCredentialsType':
          return IdentityCredentialsTypeTypeTransformer().decode(value);
        case 'IdentitySchemaContainer':
          return IdentitySchemaContainer.fromJson(value);
        case 'IdentitySchemaPreset':
          return IdentitySchemaPreset.fromJson(value);
        case 'IdentityState':
          return IdentityStateTypeTransformer().decode(value);
        case 'IdentityWithCredentials':
          return IdentityWithCredentials.fromJson(value);
        case 'IdentityWithCredentialsOidc':
          return IdentityWithCredentialsOidc.fromJson(value);
        case 'IdentityWithCredentialsOidcConfig':
          return IdentityWithCredentialsOidcConfig.fromJson(value);
        case 'IdentityWithCredentialsOidcConfigProvider':
          return IdentityWithCredentialsOidcConfigProvider.fromJson(value);
        case 'IdentityWithCredentialsPassword':
          return IdentityWithCredentialsPassword.fromJson(value);
        case 'IdentityWithCredentialsPasswordConfig':
          return IdentityWithCredentialsPasswordConfig.fromJson(value);
        case 'InternalGetProjectBrandingBody':
          return InternalGetProjectBrandingBody.fromJson(value);
        case 'InternalIsOwnerForProjectBySlugBody':
          return InternalIsOwnerForProjectBySlugBody.fromJson(value);
        case 'InternalProvisionMockSubscription':
          return InternalProvisionMockSubscription.fromJson(value);
        case 'IntrospectedOAuth2Token':
          return IntrospectedOAuth2Token.fromJson(value);
        case 'InviteQuota':
          return InviteQuota.fromJson(value);
        case 'IsOwnerForProjectBySlug':
          return IsOwnerForProjectBySlug.fromJson(value);
        case 'IsReady200Response':
          return IsReady200Response.fromJson(value);
        case 'IsReady503Response':
          return IsReady503Response.fromJson(value);
        case 'JsonPatch':
          return JsonPatch.fromJson(value);
        case 'JsonWebKey':
          return JsonWebKey.fromJson(value);
        case 'JsonWebKeySet':
          return JsonWebKeySet.fromJson(value);
        case 'KetoNamespace':
          return KetoNamespace.fromJson(value);
        case 'LoginFlow':
          return LoginFlow.fromJson(value);
        case 'LogoutFlow':
          return LogoutFlow.fromJson(value);
        case 'ManagedIdentitySchema':
          return ManagedIdentitySchema.fromJson(value);
        case 'ManagedIdentitySchemaValidationResult':
          return ManagedIdentitySchemaValidationResult.fromJson(value);
        case 'Message':
          return Message.fromJson(value);
        case 'MessageDispatch':
          return MessageDispatch.fromJson(value);
        case 'Namespace':
          return Namespace.fromJson(value);
        case 'NeedsPrivilegedSessionError':
          return NeedsPrivilegedSessionError.fromJson(value);
        // case 'NormalizedProject':
        // return NormalizedProject.fromJson(value);
        // case 'NormalizedProjectRevision':
        // return NormalizedProjectRevision.fromJson(value);
        // case 'NormalizedProjectRevisionHook':
        // return NormalizedProjectRevisionHook.fromJson(value);
        // case 'NormalizedProjectRevisionIdentitySchema':
        // return NormalizedProjectRevisionIdentitySchema.fromJson(value);
        // case 'NormalizedProjectRevisionThirdPartyProvider':
        // return NormalizedProjectRevisionThirdPartyProvider.fromJson(value);
        case 'NullPlan':
          return NullPlanTypeTransformer().decode(value);
        case 'OAuth2Client':
          return OAuth2Client.fromJson(value);
        case 'OAuth2ClientTokenLifespans':
          return OAuth2ClientTokenLifespans.fromJson(value);
        case 'OAuth2ConsentRequest':
          return OAuth2ConsentRequest.fromJson(value);
        case 'OAuth2ConsentRequestOpenIDConnectContext':
          return OAuth2ConsentRequestOpenIDConnectContext.fromJson(value);
        case 'OAuth2ConsentSession':
          return OAuth2ConsentSession.fromJson(value);
        case 'OAuth2ConsentSessionExpiresAt':
          return OAuth2ConsentSessionExpiresAt.fromJson(value);
        case 'OAuth2LoginRequest':
          return OAuth2LoginRequest.fromJson(value);
        case 'OAuth2LogoutRequest':
          return OAuth2LogoutRequest.fromJson(value);
        case 'OAuth2RedirectTo':
          return OAuth2RedirectTo.fromJson(value);
        case 'OAuth2TokenExchange':
          return OAuth2TokenExchange.fromJson(value);
        case 'OidcConfiguration':
          return OidcConfiguration.fromJson(value);
        case 'OidcUserInfo':
          return OidcUserInfo.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'PaginationHeaders':
          return PaginationHeaders.fromJson(value);
        case 'ParseError':
          return ParseError.fromJson(value);
        case 'PerformNativeLogoutBody':
          return PerformNativeLogoutBody.fromJson(value);
        case 'PostCheckPermissionBody':
          return PostCheckPermissionBody.fromJson(value);
        case 'PostCheckPermissionOrErrorBody':
          return PostCheckPermissionOrErrorBody.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'ProjectApiKey':
          return ProjectApiKey.fromJson(value);
        case 'ProjectBranding':
          return ProjectBranding.fromJson(value);
        case 'ProjectBrandingColors':
          return ProjectBrandingColors.fromJson(value);
        case 'ProjectBrandingTheme':
          return ProjectBrandingTheme.fromJson(value);
        case 'ProjectHost':
          return ProjectHost.fromJson(value);
        case 'ProjectInvite':
          return ProjectInvite.fromJson(value);
        case 'ProjectMetadata':
          return ProjectMetadata.fromJson(value);
        case 'ProjectServiceIdentity':
          return ProjectServiceIdentity.fromJson(value);
        case 'ProjectServiceOAuth2':
          return ProjectServiceOAuth2.fromJson(value);
        case 'ProjectServicePermission':
          return ProjectServicePermission.fromJson(value);
        case 'ProjectServices':
          return ProjectServices.fromJson(value);
        case 'QuotaBrandingThemes':
          return QuotaBrandingThemes.fromJson(value);
        case 'RecoveryCodeForIdentity':
          return RecoveryCodeForIdentity.fromJson(value);
        case 'RecoveryFlow':
          return RecoveryFlow.fromJson(value);
        case 'RecoveryFlowState':
          return RecoveryFlowStateTypeTransformer().decode(value);
        case 'RecoveryIdentityAddress':
          return RecoveryIdentityAddress.fromJson(value);
        case 'RecoveryLinkForIdentity':
          return RecoveryLinkForIdentity.fromJson(value);
        case 'RegistrationFlow':
          return RegistrationFlow.fromJson(value);
        case 'RejectOAuth2Request':
          return RejectOAuth2Request.fromJson(value);
        case 'RelationQuery':
          return RelationQuery.fromJson(value);
        case 'Relationship':
          return Relationship.fromJson(value);
        case 'RelationshipNamespaces':
          return RelationshipNamespaces.fromJson(value);
        case 'RelationshipPatch':
          return RelationshipPatch.fromJson(value);
        case 'Relationships':
          return Relationships.fromJson(value);
        case 'SchemaPatch':
          return SchemaPatch.fromJson(value);
        case 'SelfServiceFlowExpiredError':
          return SelfServiceFlowExpiredError.fromJson(value);
        case 'Session':
          return Session.fromJson(value);
        case 'SessionAuthenticationMethod':
          return SessionAuthenticationMethod.fromJson(value);
        case 'SessionCachingQuota':
          return SessionCachingQuota.fromJson(value);
        case 'SessionDevice':
          return SessionDevice.fromJson(value);
        case 'SetActiveProjectInConsoleBody':
          return SetActiveProjectInConsoleBody.fromJson(value);
        case 'SetCustomDomainBody':
          return SetCustomDomainBody.fromJson(value);
        case 'SetProject':
          return SetProject.fromJson(value);
        case 'SetProjectBrandingThemeBody':
          return SetProjectBrandingThemeBody.fromJson(value);
        case 'SettingsFlow':
          return SettingsFlow.fromJson(value);
        case 'SettingsFlowState':
          return SettingsFlowStateTypeTransformer().decode(value);
        case 'SourcePosition':
          return SourcePosition.fromJson(value);
        case 'StripeCustomer':
          return StripeCustomer.fromJson(value);
        case 'SubjectSet':
          return SubjectSet.fromJson(value);
        case 'Subscription':
          return Subscription.fromJson(value);
        case 'SuccessfulNativeLogin':
          return SuccessfulNativeLogin.fromJson(value);
        case 'SuccessfulNativeRegistration':
          return SuccessfulNativeRegistration.fromJson(value);
        case 'SuccessfulProjectUpdate':
          return SuccessfulProjectUpdate.fromJson(value);
        case 'TokenPagination':
          return TokenPagination.fromJson(value);
        case 'TokenPaginationHeaders':
          return TokenPaginationHeaders.fromJson(value);
        case 'TokenPaginationRequestParameters':
          return TokenPaginationRequestParameters.fromJson(value);
        case 'TokenPaginationResponseHeaders':
          return TokenPaginationResponseHeaders.fromJson(value);
        case 'TrustOAuth2JwtGrantIssuer':
          return TrustOAuth2JwtGrantIssuer.fromJson(value);
        case 'TrustedOAuth2JwtGrantIssuer':
          return TrustedOAuth2JwtGrantIssuer.fromJson(value);
        case 'TrustedOAuth2JwtGrantJsonWebKey':
          return TrustedOAuth2JwtGrantJsonWebKey.fromJson(value);
        case 'UiContainer':
          return UiContainer.fromJson(value);
        case 'UiNode':
          return UiNode.fromJson(value);
        case 'UiNodeAnchorAttributes':
          return UiNodeAnchorAttributes.fromJson(value);
        case 'UiNodeAttributes':
          return UiNodeAttributes.fromJson(value);
        case 'UiNodeImageAttributes':
          return UiNodeImageAttributes.fromJson(value);
        case 'UiNodeInputAttributes':
          return UiNodeInputAttributes.fromJson(value);
        case 'UiNodeMeta':
          return UiNodeMeta.fromJson(value);
        case 'UiNodeScriptAttributes':
          return UiNodeScriptAttributes.fromJson(value);
        case 'UiNodeTextAttributes':
          return UiNodeTextAttributes.fromJson(value);
        case 'UiText':
          return UiText.fromJson(value);
        case 'UpdateIdentityBody':
          return UpdateIdentityBody.fromJson(value);
        case 'UpdateLoginFlowBody':
          return UpdateLoginFlowBody.fromJson(value);
        case 'UpdateLoginFlowWithLookupSecretMethod':
          return UpdateLoginFlowWithLookupSecretMethod.fromJson(value);
        case 'UpdateLoginFlowWithOidcMethod':
          return UpdateLoginFlowWithOidcMethod.fromJson(value);
        case 'UpdateLoginFlowWithPasswordMethod':
          return UpdateLoginFlowWithPasswordMethod.fromJson(value);
        case 'UpdateLoginFlowWithTotpMethod':
          return UpdateLoginFlowWithTotpMethod.fromJson(value);
        case 'UpdateLoginFlowWithWebAuthnMethod':
          return UpdateLoginFlowWithWebAuthnMethod.fromJson(value);
        case 'UpdateRecoveryFlowBody':
          return UpdateRecoveryFlowBody.fromJson(value);
        case 'UpdateRecoveryFlowWithCodeMethod':
          return UpdateRecoveryFlowWithCodeMethod.fromJson(value);
        case 'UpdateRecoveryFlowWithLinkMethod':
          return UpdateRecoveryFlowWithLinkMethod.fromJson(value);
        case 'UpdateRegistrationFlowBody':
          return UpdateRegistrationFlowBody.fromJson(value);
        case 'UpdateRegistrationFlowWithOidcMethod':
          return UpdateRegistrationFlowWithOidcMethod.fromJson(value);
        case 'UpdateRegistrationFlowWithPasswordMethod':
          return UpdateRegistrationFlowWithPasswordMethod.fromJson(value);
        case 'UpdateRegistrationFlowWithWebAuthnMethod':
          return UpdateRegistrationFlowWithWebAuthnMethod.fromJson(value);
        case 'UpdateSettingsFlowBody':
          return UpdateSettingsFlowBody.fromJson(value);
        case 'UpdateSettingsFlowWithLookupMethod':
          return UpdateSettingsFlowWithLookupMethod.fromJson(value);
        case 'UpdateSettingsFlowWithOidcMethod':
          return UpdateSettingsFlowWithOidcMethod.fromJson(value);
        case 'UpdateSettingsFlowWithPasswordMethod':
          return UpdateSettingsFlowWithPasswordMethod.fromJson(value);
        case 'UpdateSettingsFlowWithProfileMethod':
          return UpdateSettingsFlowWithProfileMethod.fromJson(value);
        case 'UpdateSettingsFlowWithTotpMethod':
          return UpdateSettingsFlowWithTotpMethod.fromJson(value);
        case 'UpdateSettingsFlowWithWebAuthnMethod':
          return UpdateSettingsFlowWithWebAuthnMethod.fromJson(value);
        case 'UpdateSubscriptionBody':
          return UpdateSubscriptionBody.fromJson(value);
        case 'UpdateVerificationFlowBody':
          return UpdateVerificationFlowBody.fromJson(value);
        case 'UpdateVerificationFlowWithCodeMethodBody':
          return UpdateVerificationFlowWithCodeMethodBody.fromJson(value);
        case 'UpdateVerificationFlowWithLinkMethod':
          return UpdateVerificationFlowWithLinkMethod.fromJson(value);
        case 'VerifiableIdentityAddress':
          return VerifiableIdentityAddress.fromJson(value);
        case 'VerificationFlow':
          return VerificationFlow.fromJson(value);
        case 'VerificationFlowState':
          return VerificationFlowStateTypeTransformer().decode(value);
        case 'Version':
          return Version.fromJson(value);
        case 'Warning':
          return Warning.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
