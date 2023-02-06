//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class InternalIsOwnerForProjectBySlugBody {
  /// Returns a new [InternalIsOwnerForProjectBySlugBody] instance.
  InternalIsOwnerForProjectBySlugBody({
    this.projectScope,
    required this.projectSlug,
    required this.subject,
  });

  /// ProjectScope is the project_id resolved from the API Token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectScope;

  /// ProjectSlug is the project's slug.
  String projectSlug;

  /// Subject is the subject from the API Token.
  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InternalIsOwnerForProjectBySlugBody &&
     other.projectScope == projectScope &&
     other.projectSlug == projectSlug &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectScope == null ? 0 : projectScope!.hashCode) +
    (projectSlug.hashCode) +
    (subject.hashCode);

  @override
  String toString() => 'InternalIsOwnerForProjectBySlugBody[projectScope=$projectScope, projectSlug=$projectSlug, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.projectScope != null) {
      json[r'project_scope'] = this.projectScope;
    } else {
      json[r'project_scope'] = null;
    }
      json[r'project_slug'] = this.projectSlug;
      json[r'subject'] = this.subject;
    return json;
  }

  /// Returns a new [InternalIsOwnerForProjectBySlugBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InternalIsOwnerForProjectBySlugBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InternalIsOwnerForProjectBySlugBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InternalIsOwnerForProjectBySlugBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InternalIsOwnerForProjectBySlugBody(
        projectScope: mapValueOfType<String>(json, r'project_scope'),
        projectSlug: mapValueOfType<String>(json, r'project_slug')!,
        subject: mapValueOfType<String>(json, r'subject')!,
      );
    }
    return null;
  }

  static List<InternalIsOwnerForProjectBySlugBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InternalIsOwnerForProjectBySlugBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InternalIsOwnerForProjectBySlugBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InternalIsOwnerForProjectBySlugBody> mapFromJson(dynamic json) {
    final map = <String, InternalIsOwnerForProjectBySlugBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InternalIsOwnerForProjectBySlugBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InternalIsOwnerForProjectBySlugBody-objects as value to a dart map
  static Map<String, List<InternalIsOwnerForProjectBySlugBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InternalIsOwnerForProjectBySlugBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InternalIsOwnerForProjectBySlugBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_slug',
    'subject',
  };
}

