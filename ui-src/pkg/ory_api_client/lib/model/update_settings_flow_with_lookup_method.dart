//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSettingsFlowWithLookupMethod {
  /// Returns a new [UpdateSettingsFlowWithLookupMethod] instance.
  UpdateSettingsFlowWithLookupMethod({
    this.csrfToken,
    this.lookupSecretConfirm,
    this.lookupSecretDisable,
    this.lookupSecretRegenerate,
    this.lookupSecretReveal,
    required this.method,
  });

  /// CSRFToken is the anti-CSRF token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// If set to true will save the regenerated lookup secrets
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lookupSecretConfirm;

  /// Disables this method if true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lookupSecretDisable;

  /// If set to true will regenerate the lookup secrets
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lookupSecretRegenerate;

  /// If set to true will reveal the lookup secrets
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lookupSecretReveal;

  /// Method  Should be set to \"lookup\" when trying to add, update, or remove a lookup pairing.
  String method;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSettingsFlowWithLookupMethod &&
     other.csrfToken == csrfToken &&
     other.lookupSecretConfirm == lookupSecretConfirm &&
     other.lookupSecretDisable == lookupSecretDisable &&
     other.lookupSecretRegenerate == lookupSecretRegenerate &&
     other.lookupSecretReveal == lookupSecretReveal &&
     other.method == method;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (lookupSecretConfirm == null ? 0 : lookupSecretConfirm!.hashCode) +
    (lookupSecretDisable == null ? 0 : lookupSecretDisable!.hashCode) +
    (lookupSecretRegenerate == null ? 0 : lookupSecretRegenerate!.hashCode) +
    (lookupSecretReveal == null ? 0 : lookupSecretReveal!.hashCode) +
    (method.hashCode);

  @override
  String toString() => 'UpdateSettingsFlowWithLookupMethod[csrfToken=$csrfToken, lookupSecretConfirm=$lookupSecretConfirm, lookupSecretDisable=$lookupSecretDisable, lookupSecretRegenerate=$lookupSecretRegenerate, lookupSecretReveal=$lookupSecretReveal, method=$method]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
    if (this.lookupSecretConfirm != null) {
      json[r'lookup_secret_confirm'] = this.lookupSecretConfirm;
    } else {
      json[r'lookup_secret_confirm'] = null;
    }
    if (this.lookupSecretDisable != null) {
      json[r'lookup_secret_disable'] = this.lookupSecretDisable;
    } else {
      json[r'lookup_secret_disable'] = null;
    }
    if (this.lookupSecretRegenerate != null) {
      json[r'lookup_secret_regenerate'] = this.lookupSecretRegenerate;
    } else {
      json[r'lookup_secret_regenerate'] = null;
    }
    if (this.lookupSecretReveal != null) {
      json[r'lookup_secret_reveal'] = this.lookupSecretReveal;
    } else {
      json[r'lookup_secret_reveal'] = null;
    }
      json[r'method'] = this.method;
    return json;
  }

  /// Returns a new [UpdateSettingsFlowWithLookupMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSettingsFlowWithLookupMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSettingsFlowWithLookupMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSettingsFlowWithLookupMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSettingsFlowWithLookupMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        lookupSecretConfirm: mapValueOfType<bool>(json, r'lookup_secret_confirm'),
        lookupSecretDisable: mapValueOfType<bool>(json, r'lookup_secret_disable'),
        lookupSecretRegenerate: mapValueOfType<bool>(json, r'lookup_secret_regenerate'),
        lookupSecretReveal: mapValueOfType<bool>(json, r'lookup_secret_reveal'),
        method: mapValueOfType<String>(json, r'method')!,
      );
    }
    return null;
  }

  static List<UpdateSettingsFlowWithLookupMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSettingsFlowWithLookupMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSettingsFlowWithLookupMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSettingsFlowWithLookupMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateSettingsFlowWithLookupMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithLookupMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSettingsFlowWithLookupMethod-objects as value to a dart map
  static Map<String, List<UpdateSettingsFlowWithLookupMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSettingsFlowWithLookupMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithLookupMethod.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'method',
  };
}

