//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ExpandedPermissionTree {
  /// Returns a new [ExpandedPermissionTree] instance.
  ExpandedPermissionTree({
    this.children = const [],
    this.tuple,
    required this.type,
  });

  /// The children of the node, possibly none.
  List<ExpandedPermissionTree> children;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Relationship? tuple;

  /// The type of the node. union TreeNodeUnion exclusion TreeNodeExclusion intersection TreeNodeIntersection leaf TreeNodeLeaf tuple_to_subject_set TreeNodeTupleToSubjectSet computed_subject_set TreeNodeComputedSubjectSet not TreeNodeNot unspecified TreeNodeUnspecified
  ExpandedPermissionTreeTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpandedPermissionTree &&
     other.children == children &&
     other.tuple == tuple &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (children.hashCode) +
    (tuple == null ? 0 : tuple!.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'ExpandedPermissionTree[children=$children, tuple=$tuple, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'children'] = this.children;
    if (this.tuple != null) {
      json[r'tuple'] = this.tuple;
    } else {
      json[r'tuple'] = null;
    }
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [ExpandedPermissionTree] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpandedPermissionTree? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpandedPermissionTree[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpandedPermissionTree[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpandedPermissionTree(
        children: ExpandedPermissionTree.listFromJson(json[r'children']) ?? const [],
        tuple: Relationship.fromJson(json[r'tuple']),
        type: ExpandedPermissionTreeTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<ExpandedPermissionTree>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpandedPermissionTree>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpandedPermissionTree.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpandedPermissionTree> mapFromJson(dynamic json) {
    final map = <String, ExpandedPermissionTree>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpandedPermissionTree.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpandedPermissionTree-objects as value to a dart map
  static Map<String, List<ExpandedPermissionTree>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpandedPermissionTree>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpandedPermissionTree.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

/// The type of the node. union TreeNodeUnion exclusion TreeNodeExclusion intersection TreeNodeIntersection leaf TreeNodeLeaf tuple_to_subject_set TreeNodeTupleToSubjectSet computed_subject_set TreeNodeComputedSubjectSet not TreeNodeNot unspecified TreeNodeUnspecified
class ExpandedPermissionTreeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExpandedPermissionTreeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const union = ExpandedPermissionTreeTypeEnum._(r'union');
  static const exclusion = ExpandedPermissionTreeTypeEnum._(r'exclusion');
  static const intersection = ExpandedPermissionTreeTypeEnum._(r'intersection');
  static const leaf = ExpandedPermissionTreeTypeEnum._(r'leaf');
  static const tupleToSubjectSet = ExpandedPermissionTreeTypeEnum._(r'tuple_to_subject_set');
  static const computedSubjectSet = ExpandedPermissionTreeTypeEnum._(r'computed_subject_set');
  static const not = ExpandedPermissionTreeTypeEnum._(r'not');
  static const unspecified = ExpandedPermissionTreeTypeEnum._(r'unspecified');

  /// List of all possible values in this [enum][ExpandedPermissionTreeTypeEnum].
  static const values = <ExpandedPermissionTreeTypeEnum>[
    union,
    exclusion,
    intersection,
    leaf,
    tupleToSubjectSet,
    computedSubjectSet,
    not,
    unspecified,
  ];

  static ExpandedPermissionTreeTypeEnum? fromJson(dynamic value) => ExpandedPermissionTreeTypeEnumTypeTransformer().decode(value);

  static List<ExpandedPermissionTreeTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpandedPermissionTreeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpandedPermissionTreeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExpandedPermissionTreeTypeEnum] to String,
/// and [decode] dynamic data back to [ExpandedPermissionTreeTypeEnum].
class ExpandedPermissionTreeTypeEnumTypeTransformer {
  factory ExpandedPermissionTreeTypeEnumTypeTransformer() => _instance ??= const ExpandedPermissionTreeTypeEnumTypeTransformer._();

  const ExpandedPermissionTreeTypeEnumTypeTransformer._();

  String encode(ExpandedPermissionTreeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExpandedPermissionTreeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExpandedPermissionTreeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'union': return ExpandedPermissionTreeTypeEnum.union;
        case r'exclusion': return ExpandedPermissionTreeTypeEnum.exclusion;
        case r'intersection': return ExpandedPermissionTreeTypeEnum.intersection;
        case r'leaf': return ExpandedPermissionTreeTypeEnum.leaf;
        case r'tuple_to_subject_set': return ExpandedPermissionTreeTypeEnum.tupleToSubjectSet;
        case r'computed_subject_set': return ExpandedPermissionTreeTypeEnum.computedSubjectSet;
        case r'not': return ExpandedPermissionTreeTypeEnum.not;
        case r'unspecified': return ExpandedPermissionTreeTypeEnum.unspecified;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExpandedPermissionTreeTypeEnumTypeTransformer] instance.
  static ExpandedPermissionTreeTypeEnumTypeTransformer? _instance;
}


