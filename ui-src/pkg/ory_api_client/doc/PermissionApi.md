# ory_api_client.api.PermissionApi

## Load the API package
```dart
import 'package:ory_api_client/api.dart';
```

All URIs are relative to *https://playground.projects.oryapis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkPermission**](PermissionApi.md#checkpermission) | **GET** /relation-tuples/check/openapi | Check a permission
[**checkPermissionOrError**](PermissionApi.md#checkpermissionorerror) | **GET** /relation-tuples/check | Check a permission
[**expandPermissions**](PermissionApi.md#expandpermissions) | **GET** /relation-tuples/expand | Expand a Relationship into permissions.
[**postCheckPermission**](PermissionApi.md#postcheckpermission) | **POST** /relation-tuples/check/openapi | Check a permission
[**postCheckPermissionOrError**](PermissionApi.md#postcheckpermissionorerror) | **POST** /relation-tuples/check | Check a permission


# **checkPermission**
> CheckPermissionResult checkPermission(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation, maxDepth)

Check a permission

To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PermissionApi();
final namespace = namespace_example; // String | Namespace of the Relationship
final object = object_example; // String | Object of the Relationship
final relation = relation_example; // String | Relation of the Relationship
final subjectId = subjectId_example; // String | SubjectID of the Relationship
final subjectSetPeriodNamespace = subjectSetPeriodNamespace_example; // String | Namespace of the Subject Set
final subjectSetPeriodObject = subjectSetPeriodObject_example; // String | Object of the Subject Set
final subjectSetPeriodRelation = subjectSetPeriodRelation_example; // String | Relation of the Subject Set
final maxDepth = 789; // int | 

try {
    final result = api_instance.checkPermission(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation, maxDepth);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->checkPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Namespace of the Relationship | [optional] 
 **object** | **String**| Object of the Relationship | [optional] 
 **relation** | **String**| Relation of the Relationship | [optional] 
 **subjectId** | **String**| SubjectID of the Relationship | [optional] 
 **subjectSetPeriodNamespace** | **String**| Namespace of the Subject Set | [optional] 
 **subjectSetPeriodObject** | **String**| Object of the Subject Set | [optional] 
 **subjectSetPeriodRelation** | **String**| Relation of the Subject Set | [optional] 
 **maxDepth** | **int**|  | [optional] 

### Return type

[**CheckPermissionResult**](CheckPermissionResult.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermissionOrError**
> CheckPermissionResult checkPermissionOrError(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation, maxDepth)

Check a permission

To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PermissionApi();
final namespace = namespace_example; // String | Namespace of the Relationship
final object = object_example; // String | Object of the Relationship
final relation = relation_example; // String | Relation of the Relationship
final subjectId = subjectId_example; // String | SubjectID of the Relationship
final subjectSetPeriodNamespace = subjectSetPeriodNamespace_example; // String | Namespace of the Subject Set
final subjectSetPeriodObject = subjectSetPeriodObject_example; // String | Object of the Subject Set
final subjectSetPeriodRelation = subjectSetPeriodRelation_example; // String | Relation of the Subject Set
final maxDepth = 789; // int | 

try {
    final result = api_instance.checkPermissionOrError(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation, maxDepth);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->checkPermissionOrError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Namespace of the Relationship | [optional] 
 **object** | **String**| Object of the Relationship | [optional] 
 **relation** | **String**| Relation of the Relationship | [optional] 
 **subjectId** | **String**| SubjectID of the Relationship | [optional] 
 **subjectSetPeriodNamespace** | **String**| Namespace of the Subject Set | [optional] 
 **subjectSetPeriodObject** | **String**| Object of the Subject Set | [optional] 
 **subjectSetPeriodRelation** | **String**| Relation of the Subject Set | [optional] 
 **maxDepth** | **int**|  | [optional] 

### Return type

[**CheckPermissionResult**](CheckPermissionResult.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expandPermissions**
> ExpandedPermissionTree expandPermissions(namespace, object, relation, maxDepth)

Expand a Relationship into permissions.

Use this endpoint to expand a relationship tuple into permissions.

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PermissionApi();
final namespace = namespace_example; // String | Namespace of the Subject Set
final object = object_example; // String | Object of the Subject Set
final relation = relation_example; // String | Relation of the Subject Set
final maxDepth = 789; // int | 

try {
    final result = api_instance.expandPermissions(namespace, object, relation, maxDepth);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->expandPermissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| Namespace of the Subject Set | 
 **object** | **String**| Object of the Subject Set | 
 **relation** | **String**| Relation of the Subject Set | 
 **maxDepth** | **int**|  | [optional] 

### Return type

[**ExpandedPermissionTree**](ExpandedPermissionTree.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCheckPermission**
> CheckPermissionResult postCheckPermission(maxDepth, postCheckPermissionBody)

Check a permission

To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PermissionApi();
final maxDepth = 789; // int | 
final postCheckPermissionBody = PostCheckPermissionBody(); // PostCheckPermissionBody | 

try {
    final result = api_instance.postCheckPermission(maxDepth, postCheckPermissionBody);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->postCheckPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxDepth** | **int**|  | [optional] 
 **postCheckPermissionBody** | [**PostCheckPermissionBody**](PostCheckPermissionBody.md)|  | [optional] 

### Return type

[**CheckPermissionResult**](CheckPermissionResult.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCheckPermissionOrError**
> CheckPermissionResult postCheckPermissionOrError(maxDepth, postCheckPermissionOrErrorBody)

Check a permission

To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PermissionApi();
final maxDepth = 789; // int | 
final postCheckPermissionOrErrorBody = PostCheckPermissionOrErrorBody(); // PostCheckPermissionOrErrorBody | 

try {
    final result = api_instance.postCheckPermissionOrError(maxDepth, postCheckPermissionOrErrorBody);
    print(result);
} catch (e) {
    print('Exception when calling PermissionApi->postCheckPermissionOrError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxDepth** | **int**|  | [optional] 
 **postCheckPermissionOrErrorBody** | [**PostCheckPermissionOrErrorBody**](PostCheckPermissionOrErrorBody.md)|  | [optional] 

### Return type

[**CheckPermissionResult**](CheckPermissionResult.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

