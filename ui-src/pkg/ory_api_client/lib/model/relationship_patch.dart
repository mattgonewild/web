//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class RelationshipPatch {
  /// Returns a new [RelationshipPatch] instance.
  RelationshipPatch({
    this.action,
    this.relationTuple,
  });

  RelationshipPatchActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Relationship? relationTuple;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RelationshipPatch &&
     other.action == action &&
     other.relationTuple == relationTuple;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (relationTuple == null ? 0 : relationTuple!.hashCode);

  @override
  String toString() => 'RelationshipPatch[action=$action, relationTuple=$relationTuple]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.relationTuple != null) {
      json[r'relation_tuple'] = this.relationTuple;
    } else {
      json[r'relation_tuple'] = null;
    }
    return json;
  }

  /// Returns a new [RelationshipPatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RelationshipPatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RelationshipPatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RelationshipPatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RelationshipPatch(
        action: RelationshipPatchActionEnum.fromJson(json[r'action']),
        relationTuple: Relationship.fromJson(json[r'relation_tuple']),
      );
    }
    return null;
  }

  static List<RelationshipPatch>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelationshipPatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelationshipPatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RelationshipPatch> mapFromJson(dynamic json) {
    final map = <String, RelationshipPatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelationshipPatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RelationshipPatch-objects as value to a dart map
  static Map<String, List<RelationshipPatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RelationshipPatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelationshipPatch.listFromJson(entry.value, growable: growable,);
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


class RelationshipPatchActionEnum {
  /// Instantiate a new enum with the provided [value].
  const RelationshipPatchActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const insert = RelationshipPatchActionEnum._(r'insert');
  static const delete = RelationshipPatchActionEnum._(r'delete');

  /// List of all possible values in this [enum][RelationshipPatchActionEnum].
  static const values = <RelationshipPatchActionEnum>[
    insert,
    delete,
  ];

  static RelationshipPatchActionEnum? fromJson(dynamic value) => RelationshipPatchActionEnumTypeTransformer().decode(value);

  static List<RelationshipPatchActionEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelationshipPatchActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelationshipPatchActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RelationshipPatchActionEnum] to String,
/// and [decode] dynamic data back to [RelationshipPatchActionEnum].
class RelationshipPatchActionEnumTypeTransformer {
  factory RelationshipPatchActionEnumTypeTransformer() => _instance ??= const RelationshipPatchActionEnumTypeTransformer._();

  const RelationshipPatchActionEnumTypeTransformer._();

  String encode(RelationshipPatchActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RelationshipPatchActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RelationshipPatchActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'insert': return RelationshipPatchActionEnum.insert;
        case r'delete': return RelationshipPatchActionEnum.delete;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RelationshipPatchActionEnumTypeTransformer] instance.
  static RelationshipPatchActionEnumTypeTransformer? _instance;
}


