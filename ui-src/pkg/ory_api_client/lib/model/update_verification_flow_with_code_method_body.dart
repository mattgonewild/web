//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateVerificationFlowWithCodeMethodBody {
  /// Returns a new [UpdateVerificationFlowWithCodeMethodBody] instance.
  UpdateVerificationFlowWithCodeMethodBody({
    this.code,
    this.csrfToken,
    this.email,
    this.flow,
    this.method,
  });

  /// The verification code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Sending the anti-csrf token is only required for browser login flows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  /// Email to Verify  Needs to be set when initiating the flow. If the email is a registered verification email, a verification link will be sent. If the email is not known, a email with details on what happened will be sent instead.  format: email
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// The id of the flow
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? flow;

  /// Method is the recovery method
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateVerificationFlowWithCodeMethodBody &&
     other.code == code &&
     other.csrfToken == csrfToken &&
     other.email == email &&
     other.flow == flow &&
     other.method == method;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (flow == null ? 0 : flow!.hashCode) +
    (method == null ? 0 : method!.hashCode);

  @override
  String toString() => 'UpdateVerificationFlowWithCodeMethodBody[code=$code, csrfToken=$csrfToken, email=$email, flow=$flow, method=$method]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.flow != null) {
      json[r'flow'] = this.flow;
    } else {
      json[r'flow'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateVerificationFlowWithCodeMethodBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateVerificationFlowWithCodeMethodBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateVerificationFlowWithCodeMethodBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateVerificationFlowWithCodeMethodBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateVerificationFlowWithCodeMethodBody(
        code: mapValueOfType<String>(json, r'code'),
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        email: mapValueOfType<String>(json, r'email'),
        flow: mapValueOfType<String>(json, r'flow'),
        method: mapValueOfType<String>(json, r'method'),
      );
    }
    return null;
  }

  static List<UpdateVerificationFlowWithCodeMethodBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateVerificationFlowWithCodeMethodBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateVerificationFlowWithCodeMethodBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateVerificationFlowWithCodeMethodBody> mapFromJson(dynamic json) {
    final map = <String, UpdateVerificationFlowWithCodeMethodBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateVerificationFlowWithCodeMethodBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateVerificationFlowWithCodeMethodBody-objects as value to a dart map
  static Map<String, List<UpdateVerificationFlowWithCodeMethodBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateVerificationFlowWithCodeMethodBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateVerificationFlowWithCodeMethodBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

