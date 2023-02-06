//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class Relationships {
  /// Returns a new [Relationships] instance.
  Relationships({
    this.nextPageToken,
    this.relationTuples = const [],
  });

  /// The opaque token to provide in a subsequent request to get the next page. It is the empty string iff this is the last page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPageToken;

  List<Relationship> relationTuples;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Relationships &&
     other.nextPageToken == nextPageToken &&
     other.relationTuples == relationTuples;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nextPageToken == null ? 0 : nextPageToken!.hashCode) +
    (relationTuples.hashCode);

  @override
  String toString() => 'Relationships[nextPageToken=$nextPageToken, relationTuples=$relationTuples]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nextPageToken != null) {
      json[r'next_page_token'] = this.nextPageToken;
    } else {
      json[r'next_page_token'] = null;
    }
      json[r'relation_tuples'] = this.relationTuples;
    return json;
  }

  /// Returns a new [Relationships] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Relationships? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Relationships[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Relationships[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Relationships(
        nextPageToken: mapValueOfType<String>(json, r'next_page_token'),
        relationTuples: Relationship.listFromJson(json[r'relation_tuples']) ?? const [],
      );
    }
    return null;
  }

  static List<Relationships>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Relationships>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Relationships.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Relationships> mapFromJson(dynamic json) {
    final map = <String, Relationships>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Relationships.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Relationships-objects as value to a dart map
  static Map<String, List<Relationships>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Relationships>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Relationships.listFromJson(entry.value, growable: growable,);
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

