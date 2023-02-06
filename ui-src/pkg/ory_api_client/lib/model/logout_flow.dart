//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class LogoutFlow {
  /// Returns a new [LogoutFlow] instance.
  LogoutFlow({
    required this.logoutToken,
    required this.logoutUrl,
  });

  /// LogoutToken can be used to perform logout using AJAX.
  String logoutToken;

  /// LogoutURL can be opened in a browser to sign the user out.  format: uri
  String logoutUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogoutFlow &&
     other.logoutToken == logoutToken &&
     other.logoutUrl == logoutUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logoutToken.hashCode) +
    (logoutUrl.hashCode);

  @override
  String toString() => 'LogoutFlow[logoutToken=$logoutToken, logoutUrl=$logoutUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'logout_token'] = this.logoutToken;
      json[r'logout_url'] = this.logoutUrl;
    return json;
  }

  /// Returns a new [LogoutFlow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogoutFlow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogoutFlow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogoutFlow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogoutFlow(
        logoutToken: mapValueOfType<String>(json, r'logout_token')!,
        logoutUrl: mapValueOfType<String>(json, r'logout_url')!,
      );
    }
    return null;
  }

  static List<LogoutFlow>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogoutFlow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogoutFlow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogoutFlow> mapFromJson(dynamic json) {
    final map = <String, LogoutFlow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogoutFlow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogoutFlow-objects as value to a dart map
  static Map<String, List<LogoutFlow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogoutFlow>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogoutFlow.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'logout_token',
    'logout_url',
  };
}

