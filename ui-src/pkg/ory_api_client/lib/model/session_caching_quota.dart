//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class SessionCachingQuota {
  /// Returns a new [SessionCachingQuota] instance.
  SessionCachingQuota({
    this.canUse,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canUse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionCachingQuota &&
     other.canUse == canUse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (canUse == null ? 0 : canUse!.hashCode);

  @override
  String toString() => 'SessionCachingQuota[canUse=$canUse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.canUse != null) {
      json[r'can_use'] = this.canUse;
    } else {
      json[r'can_use'] = null;
    }
    return json;
  }

  /// Returns a new [SessionCachingQuota] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionCachingQuota? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SessionCachingQuota[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SessionCachingQuota[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SessionCachingQuota(
        canUse: mapValueOfType<bool>(json, r'can_use'),
      );
    }
    return null;
  }

  static List<SessionCachingQuota>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionCachingQuota>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionCachingQuota.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionCachingQuota> mapFromJson(dynamic json) {
    final map = <String, SessionCachingQuota>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionCachingQuota.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionCachingQuota-objects as value to a dart map
  static Map<String, List<SessionCachingQuota>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionCachingQuota>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionCachingQuota.listFromJson(entry.value, growable: growable,);
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

