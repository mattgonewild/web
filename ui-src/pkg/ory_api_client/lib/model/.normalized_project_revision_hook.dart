//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class NormalizedProjectRevisionHook {
  /// Returns a new [NormalizedProjectRevisionHook] instance.
  NormalizedProjectRevisionHook({
    required this.configKey,
    this.createdAt,
    required this.hook,
    this.id,
    this.projectRevisionId,
    this.updatedAt,
    this.webHookConfigAuthApiKeyIn,
    this.webHookConfigAuthApiKeyName,
    this.webHookConfigAuthApiKeyValue,
    this.webHookConfigAuthBasicAuthPassword,
    this.webHookConfigAuthBasicAuthUser,
    this.webHookConfigAuthType,
    this.webHookConfigBody,
    this.webHookConfigCanInterrupt,
    this.webHookConfigMethod,
    this.webHookConfigResponseIgnore,
    this.webHookConfigUrl,
  });

  /// The Hooks Config Key
  String configKey;

  /// The Project's Revision Creation Date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The Hook Type
  String hook;

  /// ID of the entry
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The Revision's ID this schema belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectRevisionId;

  /// Last Time Project's Revision was Updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// Whether to send the API Key in the HTTP Header or as a HTTP Cookie
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthApiKeyIn;

  /// The name of the api key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthApiKeyName;

  /// The value of the api key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthApiKeyValue;

  /// The password to be sent in the HTTP Basic Auth Header
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthBasicAuthPassword;

  /// The username to be sent in the HTTP Basic Auth Header
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthBasicAuthUser;

  /// HTTP Auth Method to use for the Web-Hook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigAuthType;

  /// URI pointing to the JsonNet template used for Web-Hook payload generation. Only used for those HTTP methods, which support HTTP body payloads.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigBody;

  /// If enabled allows the web hook to interrupt / abort the self-service flow. It only applies to certain flows (registration/verification/login/settings) and requires a valid response format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webHookConfigCanInterrupt;

  /// The HTTP method to use (GET, POST, etc) for the Web-Hook
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigMethod;

  /// Whether to ignore the Web Hook response
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webHookConfigResponseIgnore;

  /// The URL the Web-Hook should call
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webHookConfigUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NormalizedProjectRevisionHook &&
     other.configKey == configKey &&
     other.createdAt == createdAt &&
     other.hook == hook &&
     other.id == id &&
     other.projectRevisionId == projectRevisionId &&
     other.updatedAt == updatedAt &&
     other.webHookConfigAuthApiKeyIn == webHookConfigAuthApiKeyIn &&
     other.webHookConfigAuthApiKeyName == webHookConfigAuthApiKeyName &&
     other.webHookConfigAuthApiKeyValue == webHookConfigAuthApiKeyValue &&
     other.webHookConfigAuthBasicAuthPassword == webHookConfigAuthBasicAuthPassword &&
     other.webHookConfigAuthBasicAuthUser == webHookConfigAuthBasicAuthUser &&
     other.webHookConfigAuthType == webHookConfigAuthType &&
     other.webHookConfigBody == webHookConfigBody &&
     other.webHookConfigCanInterrupt == webHookConfigCanInterrupt &&
     other.webHookConfigMethod == webHookConfigMethod &&
     other.webHookConfigResponseIgnore == webHookConfigResponseIgnore &&
     other.webHookConfigUrl == webHookConfigUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configKey.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (hook.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (projectRevisionId == null ? 0 : projectRevisionId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (webHookConfigAuthApiKeyIn == null ? 0 : webHookConfigAuthApiKeyIn!.hashCode) +
    (webHookConfigAuthApiKeyName == null ? 0 : webHookConfigAuthApiKeyName!.hashCode) +
    (webHookConfigAuthApiKeyValue == null ? 0 : webHookConfigAuthApiKeyValue!.hashCode) +
    (webHookConfigAuthBasicAuthPassword == null ? 0 : webHookConfigAuthBasicAuthPassword!.hashCode) +
    (webHookConfigAuthBasicAuthUser == null ? 0 : webHookConfigAuthBasicAuthUser!.hashCode) +
    (webHookConfigAuthType == null ? 0 : webHookConfigAuthType!.hashCode) +
    (webHookConfigBody == null ? 0 : webHookConfigBody!.hashCode) +
    (webHookConfigCanInterrupt == null ? 0 : webHookConfigCanInterrupt!.hashCode) +
    (webHookConfigMethod == null ? 0 : webHookConfigMethod!.hashCode) +
    (webHookConfigResponseIgnore == null ? 0 : webHookConfigResponseIgnore!.hashCode) +
    (webHookConfigUrl == null ? 0 : webHookConfigUrl!.hashCode);

  @override
  String toString() => 'NormalizedProjectRevisionHook[configKey=$configKey, createdAt=$createdAt, hook=$hook, id=$id, projectRevisionId=$projectRevisionId, updatedAt=$updatedAt, webHookConfigAuthApiKeyIn=$webHookConfigAuthApiKeyIn, webHookConfigAuthApiKeyName=$webHookConfigAuthApiKeyName, webHookConfigAuthApiKeyValue=$webHookConfigAuthApiKeyValue, webHookConfigAuthBasicAuthPassword=$webHookConfigAuthBasicAuthPassword, webHookConfigAuthBasicAuthUser=$webHookConfigAuthBasicAuthUser, webHookConfigAuthType=$webHookConfigAuthType, webHookConfigBody=$webHookConfigBody, webHookConfigCanInterrupt=$webHookConfigCanInterrupt, webHookConfigMethod=$webHookConfigMethod, webHookConfigResponseIgnore=$webHookConfigResponseIgnore, webHookConfigUrl=$webHookConfigUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'config_key'] = this.configKey;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
      json[r'hook'] = this.hook;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.projectRevisionId != null) {
      json[r'project_revision_id'] = this.projectRevisionId;
    } else {
      json[r'project_revision_id'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    if (this.webHookConfigAuthApiKeyIn != null) {
      json[r'web_hook_config_auth_api_key_in'] = this.webHookConfigAuthApiKeyIn;
    } else {
      json[r'web_hook_config_auth_api_key_in'] = null;
    }
    if (this.webHookConfigAuthApiKeyName != null) {
      json[r'web_hook_config_auth_api_key_name'] = this.webHookConfigAuthApiKeyName;
    } else {
      json[r'web_hook_config_auth_api_key_name'] = null;
    }
    if (this.webHookConfigAuthApiKeyValue != null) {
      json[r'web_hook_config_auth_api_key_value'] = this.webHookConfigAuthApiKeyValue;
    } else {
      json[r'web_hook_config_auth_api_key_value'] = null;
    }
    if (this.webHookConfigAuthBasicAuthPassword != null) {
      json[r'web_hook_config_auth_basic_auth_password'] = this.webHookConfigAuthBasicAuthPassword;
    } else {
      json[r'web_hook_config_auth_basic_auth_password'] = null;
    }
    if (this.webHookConfigAuthBasicAuthUser != null) {
      json[r'web_hook_config_auth_basic_auth_user'] = this.webHookConfigAuthBasicAuthUser;
    } else {
      json[r'web_hook_config_auth_basic_auth_user'] = null;
    }
    if (this.webHookConfigAuthType != null) {
      json[r'web_hook_config_auth_type'] = this.webHookConfigAuthType;
    } else {
      json[r'web_hook_config_auth_type'] = null;
    }
    if (this.webHookConfigBody != null) {
      json[r'web_hook_config_body'] = this.webHookConfigBody;
    } else {
      json[r'web_hook_config_body'] = null;
    }
    if (this.webHookConfigCanInterrupt != null) {
      json[r'web_hook_config_can_interrupt'] = this.webHookConfigCanInterrupt;
    } else {
      json[r'web_hook_config_can_interrupt'] = null;
    }
    if (this.webHookConfigMethod != null) {
      json[r'web_hook_config_method'] = this.webHookConfigMethod;
    } else {
      json[r'web_hook_config_method'] = null;
    }
    if (this.webHookConfigResponseIgnore != null) {
      json[r'web_hook_config_response_ignore'] = this.webHookConfigResponseIgnore;
    } else {
      json[r'web_hook_config_response_ignore'] = null;
    }
    if (this.webHookConfigUrl != null) {
      json[r'web_hook_config_url'] = this.webHookConfigUrl;
    } else {
      json[r'web_hook_config_url'] = null;
    }
    return json;
  }

  /// Returns a new [NormalizedProjectRevisionHook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NormalizedProjectRevisionHook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NormalizedProjectRevisionHook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NormalizedProjectRevisionHook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NormalizedProjectRevisionHook(
        configKey: mapValueOfType<String>(json, r'config_key')!,
        createdAt: mapDateTime(json, r'created_at', ''),
        hook: mapValueOfType<String>(json, r'hook')!,
        id: mapValueOfType<String>(json, r'id'),
        projectRevisionId: mapValueOfType<String>(json, r'project_revision_id'),
        updatedAt: mapDateTime(json, r'updated_at', ''),
        webHookConfigAuthApiKeyIn: mapValueOfType<String>(json, r'web_hook_config_auth_api_key_in'),
        webHookConfigAuthApiKeyName: mapValueOfType<String>(json, r'web_hook_config_auth_api_key_name'),
        webHookConfigAuthApiKeyValue: mapValueOfType<String>(json, r'web_hook_config_auth_api_key_value'),
        webHookConfigAuthBasicAuthPassword: mapValueOfType<String>(json, r'web_hook_config_auth_basic_auth_password'),
        webHookConfigAuthBasicAuthUser: mapValueOfType<String>(json, r'web_hook_config_auth_basic_auth_user'),
        webHookConfigAuthType: mapValueOfType<String>(json, r'web_hook_config_auth_type'),
        webHookConfigBody: mapValueOfType<String>(json, r'web_hook_config_body'),
        webHookConfigCanInterrupt: mapValueOfType<bool>(json, r'web_hook_config_can_interrupt'),
        webHookConfigMethod: mapValueOfType<String>(json, r'web_hook_config_method'),
        webHookConfigResponseIgnore: mapValueOfType<bool>(json, r'web_hook_config_response_ignore'),
        webHookConfigUrl: mapValueOfType<String>(json, r'web_hook_config_url'),
      );
    }
    return null;
  }

  static List<NormalizedProjectRevisionHook>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NormalizedProjectRevisionHook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NormalizedProjectRevisionHook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NormalizedProjectRevisionHook> mapFromJson(dynamic json) {
    final map = <String, NormalizedProjectRevisionHook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevisionHook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NormalizedProjectRevisionHook-objects as value to a dart map
  static Map<String, List<NormalizedProjectRevisionHook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NormalizedProjectRevisionHook>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NormalizedProjectRevisionHook.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'config_key',
    'hook',
  };
}

