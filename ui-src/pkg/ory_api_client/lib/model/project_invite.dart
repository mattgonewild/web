//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class ProjectInvite {
  /// Returns a new [ProjectInvite] instance.
  ProjectInvite({
    required this.createdAt,
    required this.id,
    required this.inviteeEmail,
    this.inviteeId,
    required this.ownerEmail,
    required this.ownerId,
    required this.projectId,
    required this.status,
    required this.updatedAt,
  });

  /// The Project's Revision Creation Date
  DateTime createdAt;

  /// The invite's ID.
  String id;

  /// The invitee's email
  String inviteeEmail;

  String? inviteeId;

  /// The invite owner's email Usually the project's owner email
  String ownerEmail;

  /// The invite owner's ID Usually the project's owner
  String ownerId;

  /// The Project's ID this invite is associated with
  String projectId;

  /// The invite's status Keeps track of the invites status such as pending, accepted, declined, expired pending PENDING accepted ACCEPTED declined DECLINED expired EXPIRED cancelled CANCELLED removed REMOVED
  ProjectInviteStatusEnum status;

  /// Last Time Project's Revision was Updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectInvite &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.inviteeEmail == inviteeEmail &&
     other.inviteeId == inviteeId &&
     other.ownerEmail == ownerEmail &&
     other.ownerId == ownerId &&
     other.projectId == projectId &&
     other.status == status &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (id.hashCode) +
    (inviteeEmail.hashCode) +
    (inviteeId == null ? 0 : inviteeId!.hashCode) +
    (ownerEmail.hashCode) +
    (ownerId.hashCode) +
    (projectId.hashCode) +
    (status.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ProjectInvite[createdAt=$createdAt, id=$id, inviteeEmail=$inviteeEmail, inviteeId=$inviteeId, ownerEmail=$ownerEmail, ownerId=$ownerId, projectId=$projectId, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'invitee_email'] = this.inviteeEmail;
    if (this.inviteeId != null) {
      json[r'invitee_id'] = this.inviteeId;
    } else {
      json[r'invitee_id'] = null;
    }
      json[r'owner_email'] = this.ownerEmail;
      json[r'owner_id'] = this.ownerId;
      json[r'project_id'] = this.projectId;
      json[r'status'] = this.status;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ProjectInvite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectInvite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectInvite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectInvite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectInvite(
        createdAt: mapDateTime(json, r'created_at', '')!,
        id: mapValueOfType<String>(json, r'id')!,
        inviteeEmail: mapValueOfType<String>(json, r'invitee_email')!,
        inviteeId: mapValueOfType<String>(json, r'invitee_id'),
        ownerEmail: mapValueOfType<String>(json, r'owner_email')!,
        ownerId: mapValueOfType<String>(json, r'owner_id')!,
        projectId: mapValueOfType<String>(json, r'project_id')!,
        status: ProjectInviteStatusEnum.fromJson(json[r'status'])!,
        updatedAt: mapDateTime(json, r'updated_at', '')!,
      );
    }
    return null;
  }

  static List<ProjectInvite>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInvite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInvite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectInvite> mapFromJson(dynamic json) {
    final map = <String, ProjectInvite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInvite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectInvite-objects as value to a dart map
  static Map<String, List<ProjectInvite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectInvite>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectInvite.listFromJson(entry.value, growable: growable,);
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
    'id',
    'invitee_email',
    'owner_email',
    'owner_id',
    'project_id',
    'status',
    'updated_at',
  };
}

/// The invite's status Keeps track of the invites status such as pending, accepted, declined, expired pending PENDING accepted ACCEPTED declined DECLINED expired EXPIRED cancelled CANCELLED removed REMOVED
class ProjectInviteStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectInviteStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = ProjectInviteStatusEnum._(r'pending');
  static const accepted = ProjectInviteStatusEnum._(r'accepted');
  static const declined = ProjectInviteStatusEnum._(r'declined');
  static const expired = ProjectInviteStatusEnum._(r'expired');
  static const cancelled = ProjectInviteStatusEnum._(r'cancelled');
  static const removed = ProjectInviteStatusEnum._(r'removed');

  /// List of all possible values in this [enum][ProjectInviteStatusEnum].
  static const values = <ProjectInviteStatusEnum>[
    pending,
    accepted,
    declined,
    expired,
    cancelled,
    removed,
  ];

  static ProjectInviteStatusEnum? fromJson(dynamic value) => ProjectInviteStatusEnumTypeTransformer().decode(value);

  static List<ProjectInviteStatusEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectInviteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectInviteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectInviteStatusEnum] to String,
/// and [decode] dynamic data back to [ProjectInviteStatusEnum].
class ProjectInviteStatusEnumTypeTransformer {
  factory ProjectInviteStatusEnumTypeTransformer() => _instance ??= const ProjectInviteStatusEnumTypeTransformer._();

  const ProjectInviteStatusEnumTypeTransformer._();

  String encode(ProjectInviteStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectInviteStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectInviteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return ProjectInviteStatusEnum.pending;
        case r'accepted': return ProjectInviteStatusEnum.accepted;
        case r'declined': return ProjectInviteStatusEnum.declined;
        case r'expired': return ProjectInviteStatusEnum.expired;
        case r'cancelled': return ProjectInviteStatusEnum.cancelled;
        case r'removed': return ProjectInviteStatusEnum.removed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectInviteStatusEnumTypeTransformer] instance.
  static ProjectInviteStatusEnumTypeTransformer? _instance;
}


