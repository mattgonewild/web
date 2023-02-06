//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ProjectBranding {
  /// Returns a new [ProjectBranding] instance.
  ProjectBranding({
    required this.createdAt,
    required this.defaultTheme,
    required this.id,
    required this.projectId,
    this.themes = const [],
    required this.updatedAt,
  });

  /// The Customization Creation Date
  DateTime createdAt;

  ProjectBrandingTheme defaultTheme;

  /// The customization ID.
  String id;

  /// The Project's ID this customization is associated with
  String projectId;

  /// The Project Branding Themes
  List<ProjectBrandingTheme> themes;

  /// Last Time Branding was Updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectBranding &&
     other.createdAt == createdAt &&
     other.defaultTheme == defaultTheme &&
     other.id == id &&
     other.projectId == projectId &&
     other.themes == themes &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (defaultTheme.hashCode) +
    (id.hashCode) +
    (projectId.hashCode) +
    (themes.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ProjectBranding[createdAt=$createdAt, defaultTheme=$defaultTheme, id=$id, projectId=$projectId, themes=$themes, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'default_theme'] = this.defaultTheme;
      json[r'id'] = this.id;
      json[r'project_id'] = this.projectId;
      json[r'themes'] = this.themes;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ProjectBranding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectBranding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectBranding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectBranding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectBranding(
        createdAt: mapDateTime(json, r'created_at', '')!,
        defaultTheme: ProjectBrandingTheme.fromJson(json[r'default_theme'])!,
        id: mapValueOfType<String>(json, r'id')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        themes: ProjectBrandingTheme.listFromJson(json[r'themes'])!,
        updatedAt: mapDateTime(json, r'updated_at', '')!,
      );
    }
    return null;
  }

  static List<ProjectBranding>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectBranding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectBranding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectBranding> mapFromJson(dynamic json) {
    final map = <String, ProjectBranding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectBranding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectBranding-objects as value to a dart map
  static Map<String, List<ProjectBranding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectBranding>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectBranding.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'created_at',
    'default_theme',
    'id',
    'project_id',
    'themes',
    'updated_at',
  };
}

