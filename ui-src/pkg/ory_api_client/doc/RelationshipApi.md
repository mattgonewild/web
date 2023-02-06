# ory_api_client.api.RelationshipApi

## Load the API package
```dart
import 'package:ory_api_client/api.dart';
```

All URIs are relative to *https://playground.projects.oryapis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkOplSyntax**](RelationshipApi.md#checkoplsyntax) | **POST** /opl/syntax/check | Check the syntax of an OPL file
[**createRelationship**](RelationshipApi.md#createrelationship) | **PUT** /admin/relation-tuples | Create a Relationship
[**deleteRelationships**](RelationshipApi.md#deleterelationships) | **DELETE** /admin/relation-tuples | Delete Relationships
[**getRelationships**](RelationshipApi.md#getrelationships) | **GET** /relation-tuples | Query relationships
[**listRelationshipNamespaces**](RelationshipApi.md#listrelationshipnamespaces) | **GET** /namespaces | Query namespaces
[**patchRelationships**](RelationshipApi.md#patchrelationships) | **PATCH** /admin/relation-tuples | Patch Multiple Relationships


# **checkOplSyntax**
> CheckOplSyntaxResult checkOplSyntax(body)

Check the syntax of an OPL file

The OPL file is expected in the body of the request.

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();
final body = String(); // String | 

try {
    final result = api_instance.checkOplSyntax(body);
    print(result);
} catch (e) {
    print('Exception when calling RelationshipApi->checkOplSyntax: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | [optional] 

### Return type

[**CheckOplSyntaxResult**](CheckOplSyntaxResult.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRelationship**
> Relationship createRelationship(createRelationshipBody)

Create a Relationship

Use this endpoint to create a relationship.

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();
final createRelationshipBody = CreateRelationshipBody(); // CreateRelationshipBody | 

try {
    final result = api_instance.createRelationship(createRelationshipBody);
    print(result);
} catch (e) {
    print('Exception when calling RelationshipApi->createRelationship: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRelationshipBody** | [**CreateRelationshipBody**](CreateRelationshipBody.md)|  | [optional] 

### Return type

[**Relationship**](Relationship.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRelationships**
> deleteRelationships(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation)

Delete Relationships

Use this endpoint to delete relationships

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();
final namespace = namespace_example; // String | Namespace of the Relationship
final object = object_example; // String | Object of the Relationship
final relation = relation_example; // String | Relation of the Relationship
final subjectId = subjectId_example; // String | SubjectID of the Relationship
final subjectSetPeriodNamespace = subjectSetPeriodNamespace_example; // String | Namespace of the Subject Set
final subjectSetPeriodObject = subjectSetPeriodObject_example; // String | Object of the Subject Set
final subjectSetPeriodRelation = subjectSetPeriodRelation_example; // String | Relation of the Subject Set

try {
    api_instance.deleteRelationships(namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation);
} catch (e) {
    print('Exception when calling RelationshipApi->deleteRelationships: $e\n');
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

### Return type

void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelationships**
> Relationships getRelationships(pageToken, pageSize, namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation)

Query relationships

Get all relationships that match the query. Only the namespace field is required.

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();
final pageToken = pageToken_example; // String | 
final pageSize = 789; // int | 
final namespace = namespace_example; // String | Namespace of the Relationship
final object = object_example; // String | Object of the Relationship
final relation = relation_example; // String | Relation of the Relationship
final subjectId = subjectId_example; // String | SubjectID of the Relationship
final subjectSetPeriodNamespace = subjectSetPeriodNamespace_example; // String | Namespace of the Subject Set
final subjectSetPeriodObject = subjectSetPeriodObject_example; // String | Object of the Subject Set
final subjectSetPeriodRelation = subjectSetPeriodRelation_example; // String | Relation of the Subject Set

try {
    final result = api_instance.getRelationships(pageToken, pageSize, namespace, object, relation, subjectId, subjectSetPeriodNamespace, subjectSetPeriodObject, subjectSetPeriodRelation);
    print(result);
} catch (e) {
    print('Exception when calling RelationshipApi->getRelationships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageToken** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **namespace** | **String**| Namespace of the Relationship | [optional] 
 **object** | **String**| Object of the Relationship | [optional] 
 **relation** | **String**| Relation of the Relationship | [optional] 
 **subjectId** | **String**| SubjectID of the Relationship | [optional] 
 **subjectSetPeriodNamespace** | **String**| Namespace of the Subject Set | [optional] 
 **subjectSetPeriodObject** | **String**| Object of the Subject Set | [optional] 
 **subjectSetPeriodRelation** | **String**| Relation of the Subject Set | [optional] 

### Return type

[**Relationships**](Relationships.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRelationshipNamespaces**
> RelationshipNamespaces listRelationshipNamespaces()

Query namespaces

Get all namespaces

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();

try {
    final result = api_instance.listRelationshipNamespaces();
    print(result);
} catch (e) {
    print('Exception when calling RelationshipApi->listRelationshipNamespaces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RelationshipNamespaces**](RelationshipNamespaces.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchRelationships**
> patchRelationships(relationshipPatch)

Patch Multiple Relationships

Use this endpoint to patch one or more relationships.

### Example
```dart
import 'package:ory_api_client/api.dart';
// TODO Configure HTTP Bearer authorization: oryAccessToken
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('oryAccessToken').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RelationshipApi();
final relationshipPatch = [List<RelationshipPatch>()]; // List<RelationshipPatch> | 

try {
    api_instance.patchRelationships(relationshipPatch);
} catch (e) {
    print('Exception when calling RelationshipApi->patchRelationships: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationshipPatch** | [**List<RelationshipPatch>**](RelationshipPatch.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

