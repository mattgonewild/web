//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

/// The state represents the state of the verification flow.  choose_method: ask the user to choose a method (e.g. recover account via email) sent_email: the email has been sent to the user passed_challenge: the request was successful and the recovery challenge was passed.
class VerificationFlowState {
  /// Instantiate a new enum with the provided [value].
  const VerificationFlowState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const chooseMethod = VerificationFlowState._(r'choose_method');
  static const sentEmail = VerificationFlowState._(r'sent_email');
  static const passedChallenge = VerificationFlowState._(r'passed_challenge');

  /// List of all possible values in this [enum][VerificationFlowState].
  static const values = <VerificationFlowState>[
    chooseMethod,
    sentEmail,
    passedChallenge,
  ];

  static VerificationFlowState? fromJson(dynamic value) => VerificationFlowStateTypeTransformer().decode(value);

  static List<VerificationFlowState>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerificationFlowState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerificationFlowState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VerificationFlowState] to String,
/// and [decode] dynamic data back to [VerificationFlowState].
class VerificationFlowStateTypeTransformer {
  factory VerificationFlowStateTypeTransformer() => _instance ??= const VerificationFlowStateTypeTransformer._();

  const VerificationFlowStateTypeTransformer._();

  String encode(VerificationFlowState data) => data.value;

  /// Decodes a [dynamic value][data] to a VerificationFlowState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VerificationFlowState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'choose_method': return VerificationFlowState.chooseMethod;
        case r'sent_email': return VerificationFlowState.sentEmail;
        case r'passed_challenge': return VerificationFlowState.passedChallenge;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VerificationFlowStateTypeTransformer] instance.
  static VerificationFlowStateTypeTransformer? _instance;
}

