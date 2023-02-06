//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSettingsFlowWithTotpMethod {
  /// Returns a new [UpdateSettingsFlowWithTotpMethod] instance.
  UpdateSettingsFlowWithTotpMethod({
    this.csrfToken,
    required this.method,
    this.totpCode,
    this.totpUnlink,
  });

  /// CSRFToken is the anti-CSRF token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Method  Should be set to \"totp\" when trying to add, update, or remove a totp pairing.
  String method;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSettingsFlowWithTotpMethod &&
     other.csrfToken == csrfToken &&
     other.method == method &&
     other.totpCode == totpCode &&
     other.totpUnlink == totpUnlink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (method.hashCode) +
    (totpCode == null ? 0 : totpCode!.hashCode) +
    (totpUnlink == null ? 0 : totpUnlink!.hashCode);

  @override
  String toString() => 'UpdateSettingsFlowWithTotpMethod[csrfToken=$csrfToken, method=$method, totpCode=$totpCode, totpUnlink=$totpUnlink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'method'] = this.method;
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
    return json;
  }

  /// Returns a new [UpdateSettingsFlowWithTotpMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSettingsFlowWithTotpMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSettingsFlowWithTotpMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSettingsFlowWithTotpMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSettingsFlowWithTotpMethod(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        method: mapValueOfType<String>(json, r'method')!,
        totpCode: mapValueOfType<String>(json, r'totp_code'),
        totpUnlink: mapValueOfType<bool>(json, r'totp_unlink'),
      );
    }
    return null;
  }

  static List<UpdateSettingsFlowWithTotpMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSettingsFlowWithTotpMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSettingsFlowWithTotpMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSettingsFlowWithTotpMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateSettingsFlowWithTotpMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithTotpMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSettingsFlowWithTotpMethod-objects as value to a dart map
  static Map<String, List<UpdateSettingsFlowWithTotpMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSettingsFlowWithTotpMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithTotpMethod.listFromJson(entry.value, growable: growable,);
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

