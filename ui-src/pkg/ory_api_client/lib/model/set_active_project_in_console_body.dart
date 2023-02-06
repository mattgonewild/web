//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class SetActiveProjectInConsoleBody {
  /// Returns a new [SetActiveProjectInConsoleBody] instance.
  SetActiveProjectInConsoleBody({
    required this.projectId,
  });

  /// Project ID  The Project ID you want to set active.  format: uuid
  String projectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetActiveProjectInConsoleBody &&
     other.projectId == projectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode);

  @override
  String toString() => 'SetActiveProjectInConsoleBody[projectId=$projectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project_id'] = this.projectId;
    return json;
  }

  /// Returns a new [SetActiveProjectInConsoleBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetActiveProjectInConsoleBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetActiveProjectInConsoleBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetActiveProjectInConsoleBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetActiveProjectInConsoleBody(
        projectId: mapValueOfType<String>(json, r'project_id')!,
      );
    }
    return null;
  }

  static List<SetActiveProjectInConsoleBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetActiveProjectInConsoleBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetActiveProjectInConsoleBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetActiveProjectInConsoleBody> mapFromJson(dynamic json) {
    final map = <String, SetActiveProjectInConsoleBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetActiveProjectInConsoleBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetActiveProjectInConsoleBody-objects as value to a dart map
  static Map<String, List<SetActiveProjectInConsoleBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetActiveProjectInConsoleBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetActiveProjectInConsoleBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_id',
  };
}

