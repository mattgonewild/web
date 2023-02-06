//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class SourcePosition {
  /// Returns a new [SourcePosition] instance.
  SourcePosition({
    this.line,
    this.column,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? line;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? column;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SourcePosition &&
     other.line == line &&
     other.column == column;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (line == null ? 0 : line!.hashCode) +
    (column == null ? 0 : column!.hashCode);

  @override
  String toString() => 'SourcePosition[line=$line, column=$column]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.line != null) {
      json[r'Line'] = this.line;
    } else {
      json[r'Line'] = null;
    }
    if (this.column != null) {
      json[r'column'] = this.column;
    } else {
      json[r'column'] = null;
    }
    return json;
  }

  /// Returns a new [SourcePosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SourcePosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SourcePosition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SourcePosition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SourcePosition(
        line: mapValueOfType<int>(json, r'Line'),
        column: mapValueOfType<int>(json, r'column'),
      );
    }
    return null;
  }

  static List<SourcePosition>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SourcePosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourcePosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SourcePosition> mapFromJson(dynamic json) {
    final map = <String, SourcePosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SourcePosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SourcePosition-objects as value to a dart map
  static Map<String, List<SourcePosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SourcePosition>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SourcePosition.listFromJson(entry.value, growable: growable,);
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

