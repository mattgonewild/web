# ory_api_client.model.Identity

## Load the model package
```dart
import 'package:ory_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | CreatedAt is a helper struct field for gobuffalo.pop. | [optional] 
**credentials** | [**Map<String, IdentityCredentials>**](IdentityCredentials.md) | Credentials represents all credentials that can be used for authenticating this identity. | [optional] [default to const {}]
**id** | **String** | ID is the identity's unique identifier.  The Identity ID can not be changed and can not be chosen. This ensures future compatibility and optimization for distributed stores such as CockroachDB. | 
**metadataAdmin** | [**Object**](.md) | NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable- | [optional] 
**metadataPublic** | [**Object**](.md) | NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable- | [optional] 
**recoveryAddresses** | [**List<RecoveryIdentityAddress>**](RecoveryIdentityAddress.md) | RecoveryAddresses contains all the addresses that can be used to recover an identity. | [optional] [default to const []]
**schemaId** | **String** | SchemaID is the ID of the JSON Schema to be used for validating the identity's traits. | 
**schemaUrl** | **String** | SchemaURL is the URL of the endpoint where the identity's traits schema can be fetched from.  format: url | 
**state** | [**IdentityState**](IdentityState.md) |  | [optional] 
**stateChangedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**traits** | [**Object**](.md) | Traits represent an identity's traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in `schema_url`. | 
**updatedAt** | [**DateTime**](DateTime.md) | UpdatedAt is a helper struct field for gobuffalo.pop. | [optional] 
**verifiableAddresses** | [**List<VerifiableIdentityAddress>**](VerifiableIdentityAddress.md) | VerifiableAddresses contains all the addresses that can be verified by the user. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


