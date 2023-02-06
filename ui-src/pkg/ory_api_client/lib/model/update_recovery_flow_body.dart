//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateRecoveryFlowBody {
  /// Returns a new [UpdateRecoveryFlowBody] instance.
  UpdateRecoveryFlowBody({
    this.csrfToken,
    required this.email,
    required this.method,
    this.code,
  });

  /// Sending the anti-csrf token is only required for browser login flows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Email to Recover  Needs to be set when initiating the flow. If the email is a registered recovery email, a recovery link will be sent. If the email is not known, a email with details on what happened will be sent instead.  format: email
  String email;

  /// Method supports `link` and `code` only right now.
  String method;

  /// Code from recovery email  Sent to the user once a recovery has been initiated and is used to prove that the user is in possession of the email
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateRecoveryFlowBody &&
     other.csrfToken == csrfToken &&
     other.email == email &&
     other.method == method &&
     other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (email.hashCode) +
    (method.hashCode) +
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'UpdateRecoveryFlowBody[csrfToken=$csrfToken, email=$email, method=$method, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
      json[r'email'] = this.email;
      json[r'method'] = this.method;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateRecoveryFlowBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateRecoveryFlowBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateRecoveryFlowBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateRecoveryFlowBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateRecoveryFlowBody(
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        email: mapValueOfType<String>(json, r'email')!,
        method: mapValueOfType<String>(json, r'method')!,
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<UpdateRecoveryFlowBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRecoveryFlowBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRecoveryFlowBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateRecoveryFlowBody> mapFromJson(dynamic json) {
    final map = <String, UpdateRecoveryFlowBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRecoveryFlowBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateRecoveryFlowBody-objects as value to a dart map
  static Map<String, List<UpdateRecoveryFlowBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateRecoveryFlowBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRecoveryFlowBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'method',
  };
}

