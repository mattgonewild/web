//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

/// show_form: No user data has been collected, or it is invalid, and thus the form should be shown. success: Indicates that the settings flow has been updated successfully with the provided data. Done will stay true when repeatedly checking. If set to true, done will revert back to false only when a flow with invalid (e.g. \"please use a valid phone number\") data was sent.
class SettingsFlowState {
  /// Instantiate a new enum with the provided [value].
  const SettingsFlowState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const showForm = SettingsFlowState._(r'show_form');
  static const success = SettingsFlowState._(r'success');

  /// List of all possible values in this [enum][SettingsFlowState].
  static const values = <SettingsFlowState>[
    showForm,
    success,
  ];

  static SettingsFlowState? fromJson(dynamic value) => SettingsFlowStateTypeTransformer().decode(value);

  static List<SettingsFlowState>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettingsFlowState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsFlowState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SettingsFlowState] to String,
/// and [decode] dynamic data back to [SettingsFlowState].
class SettingsFlowStateTypeTransformer {
  factory SettingsFlowStateTypeTransformer() => _instance ??= const SettingsFlowStateTypeTransformer._();

  const SettingsFlowStateTypeTransformer._();

  String encode(SettingsFlowState data) => data.value;

  /// Decodes a [dynamic value][data] to a SettingsFlowState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SettingsFlowState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'show_form': return SettingsFlowState.showForm;
        case r'success': return SettingsFlowState.success;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SettingsFlowStateTypeTransformer] instance.
  static SettingsFlowStateTypeTransformer? _instance;
}

