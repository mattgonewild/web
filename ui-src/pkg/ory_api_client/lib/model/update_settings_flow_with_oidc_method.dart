//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSettingsFlowWithOidcMethod {
  /// Returns a new [UpdateSettingsFlowWithOidcMethod] instance.
  UpdateSettingsFlowWithOidcMethod({
    this.flow,
    this.link,
    required this.method,
    this.traits,
    this.unlink,
  });

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

  /// Method  Should be set to profile when trying to update a profile.
  String method;

  /// The identity's traits  in: body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? traits;

  /// Unlink this provider  Either this or `link` must be set.  type: string in: body
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unlink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSettingsFlowWithOidcMethod &&
     other.flow == flow &&
     other.link == link &&
     other.method == method &&
     other.traits == traits &&
     other.unlink == unlink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (flow == null ? 0 : flow!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (method.hashCode) +
    (traits == null ? 0 : traits!.hashCode) +
    (unlink == null ? 0 : unlink!.hashCode);

  @override
  String toString() => 'UpdateSettingsFlowWithOidcMethod[flow=$flow, link=$link, method=$method, traits=$traits, unlink=$unlink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'method'] = this.method;
    if (this.traits != null) {
      json[r'traits'] = this.traits;
    } else {
      json[r'traits'] = null;
    }
    if (this.unlink != null) {
      json[r'unlink'] = this.unlink;
    } else {
      json[r'unlink'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSettingsFlowWithOidcMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSettingsFlowWithOidcMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSettingsFlowWithOidcMethod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSettingsFlowWithOidcMethod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSettingsFlowWithOidcMethod(
        flow: mapValueOfType<String>(json, r'flow'),
        link: mapValueOfType<String>(json, r'link'),
        method: mapValueOfType<String>(json, r'method')!,
        traits: mapValueOfType<Object>(json, r'traits'),
        unlink: mapValueOfType<String>(json, r'unlink'),
      );
    }
    return null;
  }

  static List<UpdateSettingsFlowWithOidcMethod>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSettingsFlowWithOidcMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSettingsFlowWithOidcMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSettingsFlowWithOidcMethod> mapFromJson(dynamic json) {
    final map = <String, UpdateSettingsFlowWithOidcMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithOidcMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSettingsFlowWithOidcMethod-objects as value to a dart map
  static Map<String, List<UpdateSettingsFlowWithOidcMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSettingsFlowWithOidcMethod>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSettingsFlowWithOidcMethod.listFromJson(entry.value, growable: growable,);
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

