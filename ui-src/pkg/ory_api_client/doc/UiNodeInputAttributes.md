# ory_api_client.model.UiNodeInputAttributes

## Load the model package
```dart
import 'package:ory_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**autocomplete** | **String** | The autocomplete attribute for the input. email InputAttributeAutocompleteEmail tel InputAttributeAutocompleteTel url InputAttributeAutocompleteUrl current-password InputAttributeAutocompleteCurrentPassword new-password InputAttributeAutocompleteNewPassword one-time-code InputAttributeAutocompleteOneTimeCode | [optional] 
**disabled** | **bool** | Sets the input's disabled field to true or false. | 
**label** | [**UiText**](UiText.md) |  | [optional] 
**name** | **String** | The input's element name. | 
**nodeType** | **String** | NodeType represents this node's types. It is a mirror of `node.type` and is primarily used to allow compatibility with OpenAPI 3.0.  In this struct it technically always is \"input\". | 
**onclick** | **String** | OnClick may contain javascript which should be executed on click. This is primarily used for WebAuthn. | [optional] 
**pattern** | **String** | The input's pattern. | [optional] 
**required_** | **bool** | Mark this input field as required. | [optional] 
**type** | **String** | The input's element type. text InputAttributeTypeText password InputAttributeTypePassword number InputAttributeTypeNumber checkbox InputAttributeTypeCheckbox hidden InputAttributeTypeHidden email InputAttributeTypeEmail tel InputAttributeTypeTel submit InputAttributeTypeSubmit button InputAttributeTypeButton datetime-local InputAttributeTypeDateTimeLocal date InputAttributeTypeDate url InputAttributeTypeURI | 
**value** | [**Object**](.md) | The input's value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

