//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class CreateProjectInvite {
  /// Returns a new [CreateProjectInvite] instance.
  CreateProjectInvite({
    this.inviteeEmail,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inviteeEmail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProjectInvite &&
     other.inviteeEmail == inviteeEmail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inviteeEmail == null ? 0 : inviteeEmail!.hashCode);

  @override
  String toString() => 'CreateProjectInvite[inviteeEmail=$inviteeEmail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inviteeEmail != null) {
      json[r'invitee_email'] = this.inviteeEmail;
    } else {
      json[r'invitee_email'] = null;
    }
    return json;
  }

  /// Returns a new [CreateProjectInvite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProjectInvite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProjectInvite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProjectInvite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProjectInvite(
        inviteeEmail: mapValueOfType<String>(json, r'invitee_email'),
      );
    }
    return null;
  }

  static List<CreateProjectInvite>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectInvite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectInvite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProjectInvite> mapFromJson(dynamic json) {
    final map = <String, CreateProjectInvite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectInvite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProjectInvite-objects as value to a dart map
  static Map<String, List<CreateProjectInvite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProjectInvite>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectInvite.listFromJson(entry.value, growable: growable,);
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

