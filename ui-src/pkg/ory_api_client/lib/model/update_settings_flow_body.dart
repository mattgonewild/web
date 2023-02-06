//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSettingsFlowBody {
  /// Returns a new [UpdateSettingsFlowBody] instance.
  UpdateSettingsFlowBody({
    this.csrfToken,
    required this.method,
    required this.password,
    required this.traits,
    this.flow,
    this.link,
    this.unlink,
    this.totpCode,
    this.totpUnlink,
    this.webauthnRegister,
    this.webauthnRegisterDisplayname,
    this.webauthnRemove,
    this.lookupSecretConfirm,
    this.lookupSecretDisable,
    this.lookupSecretRegenerate,
    this.lookupSecretReveal,
  });

  /// CSRFToken is the anti-CSRF token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Method  Should be set to \"lookup\" when trying to add, update, or remove a lookup pairing.
  String method;

  /// Password is the updated password
  String password;

  /// The identity's traits  in: body
  Object traits;

  /// Flow ID is the flow's ID.  in: query
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  /// Link this provider  Either this or `unlink` must be set.  type: string in: body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// Unlink this provider  Either this or `link` must be set.  type: string in: body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unlink;

  /// ValidationTOTP must contain a valid TOTP based on the
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totpCode;

  /// UnlinkTOTP if true will remove the TOTP pairing, effectively removing the credential. This can be used to set up a new TOTP device.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? totpUnlink;

  /// Register a WebAuthn Security Key  It is expected that the JSON returned by the WebAuthn registration process is included here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnRegister;

  /// Name of the WebAuthn Security Key to be Added  A human-readable name for the security key which will be added.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnRegisterDisplayname;

  /// Remove a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webauthnRemove;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSettingsFlowBody &&
     other.csrfToken == csrfToken &&
     other.method == method &&
     other.password == password &&
     other.traits == traits &&
     other.flow == flow &&
     other.link == link &&
     other.unlink == unlink &&
     other.totpCode == totpCode &&
     other.totpUnlink == totpUnlink &&
     other.webauthnRegister == webauthnRegister &&
     other.webauthnRegisterDisplayname == webauthnRegisterDisplayname &&
     other.webauthnRemove == webauthnRemove &&
     other.lookupSecretConfirm == lookupSecretConfirm &&
     other.lookupSecretDisable == lookupSecretDisable &&
     other.lookupSecretRegenerate == lookupSecretRegenerate &&
     other.lookupSecretReveal == lookupSecretReveal;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (method.hashCode) +
    (password.hashCode) +
    (traits.hashCode) +
    (flow == null ? 0 : flow!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (unlink == null ? 0 : unlink!.hashCode) +
    (totpCode == null ? 0 : totpCode!.hashCode) +
    (totpUnlink == null ? 0 : totpUnlink!.hashCode) +
    (webauthnRegister == null ? 0 : webauthnRegister!.hashCode) +
    (webauthnRegisterDisplayname == null ? 0 : webauthnRegisterDisplayname!.hashCode) +
    (webauthnRemove == null ? 0 : webauthnRemove!.hashCode) +
    (lookupSecretConfirm == null ? 0 : lookupSecretConfirm!.hashCode) +
    (lookupSecretDisable == null ? 0 : lookupSecretDisable!.hashCode) +
    (lookupSecretRegenerate == null ? 0 : lookupSecretRegenerate!.hashCode) +
    (lookupSecretReveal == null ? 0 : lookupSecretReveal!.hashCode);

  @override
  String toString() => 'UpdateSettingsFlowBody[csrfToken=$csrfToken, method=$method, password=$password, traits=$traits, flow=$flow, link=$link, unlink=$unlink, totpCode=$totpCode, totpUnlink=$totpUnlink, webauthnRegister=$webauthnRegister, webauthnRegisterDisplayname=$webauthnRegisterDisplayname, webauthnRemove=$webauthnRemove, lookupSecretConfirm=$lookupSecretConfirm, lookupSecretDisable=$lookupSecretDisable, lookupSecretRegenerate=$lookupSecretRegenerate, lookupSecretReveal=$lookupSecretReveal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'method'] = this.method;
      json[r'password'] = this.password;
      json[r'traits'] = this.traits;
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.unlink != null) {
      json[r'unlink'] = this.unlink;
    } else {
      json[r'unlink'] = null;
    }
    if (this.totpCode != null) {
      json[r'totp_code'] = this.totpCode;
    } else {
      json[r'totp_code'] = null;
    }
    if (this.totpUnlink != null) {
      json[r'totp_unlink'] = this.totpUnlink;
    } else {
      json[r'totp_unlink'] = null;
    }
    if (this.webauthnRegister != null) {
      json[r'webauthn_register'] = this.webauthnRegister;
    } else {
      json[r'webauthn_register'] = null;
    }
    if (this.webauthnRegisterDisplayname != null) {
      json[r'webauthn_register_displayname'] = this.webauthnRegisterDisplayname;
    } else {
      json[r'webauthn_register_displayname'] = null;
    }
    if (this.webauthnRemove != null) {
      json[r'webauthn_remove'] = this.webauthnRemove;
    } else {
      json[r'webauthn_remove'] = null;
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
    return json;
  }

  /// Returns a new [UpdateSettingsFlowBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSettingsFlowBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSettingsFlowBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSettingsFlowBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSettingsFlowBody(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        method: mapValueOfType<String>(json, r'method')!,
        password: mapValueOfType<String>(json, r'password')!,
        traits: mapValueOfType<Object>(json, r'traits')!,
        flow: mapValueOfType<String>(json, r'flow'),
        link: mapValueOfType<String>(json, r'link'),
        unlink: mapValueOfType<String>(json, r'unlink'),
        totpCode: mapValueOfType<String>(json, r'totp_code'),
        totpUnlink: mapValueOfType<bool>(json, r'totp_unlink'),
        webauthnRegister: mapValueOfType<String>(json, r'webauthn_register'),
        webauthnRegisterDisplayname: mapValueOfType<String>(json, r'webauthn_register_displayname'),
        webauthnRemove: mapValueOfType<String>(json, r'webauthn_remove'),
        lookupSecretConfirm: mapValueOfType<bool>(json, r'lookup_secret_confirm'),
        lookupSecretDisable: mapValueOfType<bool>(json, r'lookup_secret_disable'),
        lookupSecretRegenerate: mapValueOfType<bool>(json, r'lookup_secret_regenerate'),
        lookupSecretReveal: mapValueOfType<bool>(json, r'lookup_secret_reveal'),
      );
    }
    return null;
  }

  static List<UpdateSettingsFlowBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSettingsFlowBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSettingsFlowBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSettingsFlowBody> mapFromJson(dynamic json) {
    final map = <String, UpdateSettingsFlowBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSettingsFlowBody-objects as value to a dart map
  static Map<String, List<UpdateSettingsFlowBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSettingsFlowBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowBody.listFromJson(entry.value, growable: growable,);
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
    'password',
    'traits',
  };
}

