//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class DeleteMySessionsCount {
  /// Returns a new [DeleteMySessionsCount] instance.
  DeleteMySessionsCount({
    this.count,
  });

  /// The number of sessions that were revoked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteMySessionsCount &&
     other.count == count;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode);

  @override
  String toString() => 'DeleteMySessionsCount[count=$count]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    return json;
  }

  /// Returns a new [DeleteMySessionsCount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteMySessionsCount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteMySessionsCount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteMySessionsCount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteMySessionsCount(
        count: mapValueOfType<int>(json, r'count'),
      );
    }
    return null;
  }

  static List<DeleteMySessionsCount>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteMySessionsCount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteMySessionsCount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteMySessionsCount> mapFromJson(dynamic json) {
    final map = <String, DeleteMySessionsCount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteMySessionsCount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteMySessionsCount-objects as value to a dart map
  static Map<String, List<DeleteMySessionsCount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteMySessionsCount>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteMySessionsCount.listFromJson(entry.value, growable: growable,);
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

