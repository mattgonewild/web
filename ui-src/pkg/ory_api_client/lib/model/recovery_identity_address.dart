//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class RecoveryIdentityAddress {
  /// Returns a new [RecoveryIdentityAddress] instance.
  RecoveryIdentityAddress({
    this.createdAt,
    required this.id,
    this.updatedAt,
    required this.value,
    required this.via,
  });

  /// CreatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  String id;

  /// UpdatedAt is a helper struct field for gobuffalo.pop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  String value;

  String via;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecoveryIdentityAddress &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.updatedAt == updatedAt &&
     other.value == value &&
     other.via == via;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (value.hashCode) +
    (via.hashCode);

  @override
  String toString() => 'RecoveryIdentityAddress[createdAt=$createdAt, id=$id, updatedAt=$updatedAt, value=$value, via=$via]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
      json[r'id'] = this.id;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
      json[r'value'] = this.value;
      json[r'via'] = this.via;
    return json;
  }

  /// Returns a new [RecoveryIdentityAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecoveryIdentityAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecoveryIdentityAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecoveryIdentityAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecoveryIdentityAddress(
        createdAt: mapDateTime(json, r'created_at', ''),
        id: mapValueOfType<String>(json, r'id')!,
        updatedAt: mapDateTime(json, r'updated_at', ''),
        value: mapValueOfType<String>(json, r'value')!,
        via: mapValueOfType<String>(json, r'via')!,
      );
    }
    return null;
  }

  static List<RecoveryIdentityAddress>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecoveryIdentityAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecoveryIdentityAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecoveryIdentityAddress> mapFromJson(dynamic json) {
    final map = <String, RecoveryIdentityAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecoveryIdentityAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecoveryIdentityAddress-objects as value to a dart map
  static Map<String, List<RecoveryIdentityAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecoveryIdentityAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecoveryIdentityAddress.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'value',
    'via',
  };
}

