//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class Message {
  /// Returns a new [Message] instance.
  Message({
    required this.body,
    required this.createdAt,
    this.dispatches = const [],
    required this.id,
    required this.recipient,
    required this.sendCount,
    required this.status,
    required this.subject,
    required this.templateType,
    required this.type,
    required this.updatedAt,
  });

  String body;

  /// CreatedAt is a helper struct field for gobuffalo.pop.
  DateTime createdAt;

  /// Dispatches store information about the attempts of delivering a message May contain an error if any happened, or just the `success` state.
  List<MessageDispatch> dispatches;

  String id;

  String recipient;

  int sendCount;

  CourierMessageStatus status;

  String subject;

  ///  recovery_invalid TypeRecoveryInvalid recovery_valid TypeRecoveryValid recovery_code_invalid TypeRecoveryCodeInvalid recovery_code_valid TypeRecoveryCodeValid verification_invalid TypeVerificationInvalid verification_valid TypeVerificationValid verification_code_invalid TypeVerificationCodeInvalid verification_code_valid TypeVerificationCodeValid otp TypeOTP stub TypeTestStub
  MessageTemplateTypeEnum templateType;

  CourierMessageType type;

  /// UpdatedAt is a helper struct field for gobuffalo.pop.
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Message &&
     other.body == body &&
     other.createdAt == createdAt &&
     other.dispatches == dispatches &&
     other.id == id &&
     other.recipient == recipient &&
     other.sendCount == sendCount &&
     other.status == status &&
     other.subject == subject &&
     other.templateType == templateType &&
     other.type == type &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (createdAt.hashCode) +
    (dispatches.hashCode) +
    (id.hashCode) +
    (recipient.hashCode) +
    (sendCount.hashCode) +
    (status.hashCode) +
    (subject.hashCode) +
    (templateType.hashCode) +
    (type.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Message[body=$body, createdAt=$createdAt, dispatches=$dispatches, id=$id, recipient=$recipient, sendCount=$sendCount, status=$status, subject=$subject, templateType=$templateType, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'dispatches'] = this.dispatches;
      json[r'id'] = this.id;
      json[r'recipient'] = this.recipient;
      json[r'send_count'] = this.sendCount;
      json[r'status'] = this.status;
      json[r'subject'] = this.subject;
      json[r'template_type'] = this.templateType;
      json[r'type'] = this.type;
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Message] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Message? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Message[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Message[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Message(
        body: mapValueOfType<String>(json, r'body')!,
        createdAt: mapDateTime(json, r'created_at', '')!,
        dispatches: MessageDispatch.listFromJson(json[r'dispatches']) ?? const [],
        id: mapValueOfType<String>(json, r'id')!,
        recipient: mapValueOfType<String>(json, r'recipient')!,
        sendCount: mapValueOfType<int>(json, r'send_count')!,
        status: CourierMessageStatus.fromJson(json[r'status'])!,
        subject: mapValueOfType<String>(json, r'subject')!,
        templateType: MessageTemplateTypeEnum.fromJson(json[r'template_type'])!,
        type: CourierMessageType.fromJson(json[r'type'])!,
        updatedAt: mapDateTime(json, r'updated_at', '')!,
      );
    }
    return null;
  }

  static List<Message>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Message>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Message.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Message> mapFromJson(dynamic json) {
    final map = <String, Message>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Message.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Message>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Message.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'created_at',
    'id',
    'recipient',
    'send_count',
    'status',
    'subject',
    'template_type',
    'type',
    'updated_at',
  };
}

///  recovery_invalid TypeRecoveryInvalid recovery_valid TypeRecoveryValid recovery_code_invalid TypeRecoveryCodeInvalid recovery_code_valid TypeRecoveryCodeValid verification_invalid TypeVerificationInvalid verification_valid TypeVerificationValid verification_code_invalid TypeVerificationCodeInvalid verification_code_valid TypeVerificationCodeValid otp TypeOTP stub TypeTestStub
class MessageTemplateTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MessageTemplateTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const recoveryInvalid = MessageTemplateTypeEnum._(r'recovery_invalid');
  static const recoveryValid = MessageTemplateTypeEnum._(r'recovery_valid');
  static const recoveryCodeInvalid = MessageTemplateTypeEnum._(r'recovery_code_invalid');
  static const recoveryCodeValid = MessageTemplateTypeEnum._(r'recovery_code_valid');
  static const verificationInvalid = MessageTemplateTypeEnum._(r'verification_invalid');
  static const verificationValid = MessageTemplateTypeEnum._(r'verification_valid');
  static const verificationCodeInvalid = MessageTemplateTypeEnum._(r'verification_code_invalid');
  static const verificationCodeValid = MessageTemplateTypeEnum._(r'verification_code_valid');
  static const otp = MessageTemplateTypeEnum._(r'otp');
  static const stub = MessageTemplateTypeEnum._(r'stub');

  /// List of all possible values in this [enum][MessageTemplateTypeEnum].
  static const values = <MessageTemplateTypeEnum>[
    recoveryInvalid,
    recoveryValid,
    recoveryCodeInvalid,
    recoveryCodeValid,
    verificationInvalid,
    verificationValid,
    verificationCodeInvalid,
    verificationCodeValid,
    otp,
    stub,
  ];

  static MessageTemplateTypeEnum? fromJson(dynamic value) => MessageTemplateTypeEnumTypeTransformer().decode(value);

  static List<MessageTemplateTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessageTemplateTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessageTemplateTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessageTemplateTypeEnum] to String,
/// and [decode] dynamic data back to [MessageTemplateTypeEnum].
class MessageTemplateTypeEnumTypeTransformer {
  factory MessageTemplateTypeEnumTypeTransformer() => _instance ??= const MessageTemplateTypeEnumTypeTransformer._();

  const MessageTemplateTypeEnumTypeTransformer._();

  String encode(MessageTemplateTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessageTemplateTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessageTemplateTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'recovery_invalid': return MessageTemplateTypeEnum.recoveryInvalid;
        case r'recovery_valid': return MessageTemplateTypeEnum.recoveryValid;
        case r'recovery_code_invalid': return MessageTemplateTypeEnum.recoveryCodeInvalid;
        case r'recovery_code_valid': return MessageTemplateTypeEnum.recoveryCodeValid;
        case r'verification_invalid': return MessageTemplateTypeEnum.verificationInvalid;
        case r'verification_valid': return MessageTemplateTypeEnum.verificationValid;
        case r'verification_code_invalid': return MessageTemplateTypeEnum.verificationCodeInvalid;
        case r'verification_code_valid': return MessageTemplateTypeEnum.verificationCodeValid;
        case r'otp': return MessageTemplateTypeEnum.otp;
        case r'stub': return MessageTemplateTypeEnum.stub;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessageTemplateTypeEnumTypeTransformer] instance.
  static MessageTemplateTypeEnumTypeTransformer? _instance;
}


