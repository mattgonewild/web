//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ErrorFlowReplaced {
  /// Returns a new [ErrorFlowReplaced] instance.
  ErrorFlowReplaced({
    this.code,
    this.debug,
    this.details = const {},
    this.id,
    required this.message,
    this.reason,
    this.request,
    this.status,
    this.useFlowId,
  });

  /// The status code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? code;

  /// Debug information  This field is often not exposed to protect against leaking sensitive information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? debug;

  /// Further error details
  Map<String, Object> details;

  /// The error ID  Useful when trying to identify various errors in application logic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Error message  The error's message.
  String message;

  /// A human-readable reason for the error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// The request ID  The request ID is often exposed internally in order to trace errors across service architectures. This is often a UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? request;

  /// The status description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// The flow ID that should be used for the new flow as it contains the correct messages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? useFlowId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorFlowReplaced &&
     other.code == code &&
     other.debug == debug &&
     other.details == details &&
     other.id == id &&
     other.message == message &&
     other.reason == reason &&
     other.request == request &&
     other.status == status &&
     other.useFlowId == useFlowId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (debug == null ? 0 : debug!.hashCode) +
    (details.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (message.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (request == null ? 0 : request!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (useFlowId == null ? 0 : useFlowId!.hashCode);

  @override
  String toString() => 'ErrorFlowReplaced[code=$code, debug=$debug, details=$details, id=$id, message=$message, reason=$reason, request=$request, status=$status, useFlowId=$useFlowId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.debug != null) {
      json[r'debug'] = this.debug;
    } else {
      json[r'debug'] = null;
    }
      json[r'details'] = this.details;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'message'] = this.message;
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.request != null) {
      json[r'request'] = this.request;
    } else {
      json[r'request'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.useFlowId != null) {
      json[r'use_flow_id'] = this.useFlowId;
    } else {
      json[r'use_flow_id'] = null;
    }
    return json;
  }

  /// Returns a new [ErrorFlowReplaced] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorFlowReplaced? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorFlowReplaced[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorFlowReplaced[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorFlowReplaced(
        code: mapValueOfType<int>(json, r'code'),
        debug: mapValueOfType<String>(json, r'debug'),
        details: mapCastOfType<String, Object>(json, r'details') ?? const {},
        id: mapValueOfType<String>(json, r'id'),
        message: mapValueOfType<String>(json, r'message')!,
        reason: mapValueOfType<String>(json, r'reason'),
        request: mapValueOfType<String>(json, r'request'),
        status: mapValueOfType<String>(json, r'status'),
        useFlowId: mapValueOfType<String>(json, r'use_flow_id'),
      );
    }
    return null;
  }

  static List<ErrorFlowReplaced>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorFlowReplaced>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorFlowReplaced.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorFlowReplaced> mapFromJson(dynamic json) {
    final map = <String, ErrorFlowReplaced>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorFlowReplaced.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorFlowReplaced-objects as value to a dart map
  static Map<String, List<ErrorFlowReplaced>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorFlowReplaced>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorFlowReplaced.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
  };
}

