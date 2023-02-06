//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class CreateProjectBranding {
  /// Returns a new [CreateProjectBranding] instance.
  CreateProjectBranding({
    this.logoType,
    this.logoUrl,
    this.name,
    this.theme,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectBrandingColors? theme;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProjectBranding &&
     other.logoType == logoType &&
     other.logoUrl == logoUrl &&
     other.name == name &&
     other.theme == theme;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logoType == null ? 0 : logoType!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (theme == null ? 0 : theme!.hashCode);

  @override
  String toString() => 'CreateProjectBranding[logoType=$logoType, logoUrl=$logoUrl, name=$name, theme=$theme]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logoType != null) {
      json[r'logo_type'] = this.logoType;
    } else {
      json[r'logo_type'] = null;
    }
    if (this.logoUrl != null) {
      json[r'logo_url'] = this.logoUrl;
    } else {
      json[r'logo_url'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.theme != null) {
      json[r'theme'] = this.theme;
    } else {
      json[r'theme'] = null;
    }
    return json;
  }

  /// Returns a new [CreateProjectBranding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProjectBranding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProjectBranding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProjectBranding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProjectBranding(
        logoType: mapValueOfType<String>(json, r'logo_type'),
        logoUrl: mapValueOfType<String>(json, r'logo_url'),
        name: mapValueOfType<String>(json, r'name'),
        theme: ProjectBrandingColors.fromJson(json[r'theme']),
      );
    }
    return null;
  }

  static List<CreateProjectBranding>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectBranding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectBranding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProjectBranding> mapFromJson(dynamic json) {
    final map = <String, CreateProjectBranding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectBranding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProjectBranding-objects as value to a dart map
  static Map<String, List<CreateProjectBranding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProjectBranding>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectBranding.listFromJson(entry.value, growable: growable,);
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

