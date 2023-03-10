//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class InviteQuota {
  /// Returns a new [InviteQuota] instance.
  InviteQuota({
    this.projectId,
    this.remainingSeats,
    this.totalSeats,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingSeats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSeats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InviteQuota &&
     other.projectId == projectId &&
     other.remainingSeats == remainingSeats &&
     other.totalSeats == totalSeats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId == null ? 0 : projectId!.hashCode) +
    (remainingSeats == null ? 0 : remainingSeats!.hashCode) +
    (totalSeats == null ? 0 : totalSeats!.hashCode);

  @override
  String toString() => 'InviteQuota[projectId=$projectId, remainingSeats=$remainingSeats, totalSeats=$totalSeats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
    }
    if (this.remainingSeats != null) {
      json[r'remaining_seats'] = this.remainingSeats;
    } else {
      json[r'remaining_seats'] = null;
    }
    if (this.totalSeats != null) {
      json[r'total_seats'] = this.totalSeats;
    } else {
      json[r'total_seats'] = null;
    }
    return json;
  }

  /// Returns a new [InviteQuota] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InviteQuota? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InviteQuota[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InviteQuota[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InviteQuota(
        projectId: mapValueOfType<String>(json, r'project_id'),
        remainingSeats: mapValueOfType<int>(json, r'remaining_seats'),
        totalSeats: mapValueOfType<int>(json, r'total_seats'),
      );
    }
    return null;
  }

  static List<InviteQuota>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InviteQuota>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InviteQuota.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InviteQuota> mapFromJson(dynamic json) {
    final map = <String, InviteQuota>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteQuota.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InviteQuota-objects as value to a dart map
  static Map<String, List<InviteQuota>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InviteQuota>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InviteQuota.listFromJson(entry.value, growable: growable,);
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

