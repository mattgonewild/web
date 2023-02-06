//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UpdateSubscriptionBody {
  /// Returns a new [UpdateSubscriptionBody] instance.
  UpdateSubscriptionBody({
    required this.planOrPrice,
    this.returnTo,
  });

  String planOrPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSubscriptionBody &&
     other.planOrPrice == planOrPrice &&
     other.returnTo == returnTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (planOrPrice.hashCode) +
    (returnTo == null ? 0 : returnTo!.hashCode);

  @override
  String toString() => 'UpdateSubscriptionBody[planOrPrice=$planOrPrice, returnTo=$returnTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'plan_or_price'] = this.planOrPrice;
    if (this.returnTo != null) {
      json[r'return_to'] = this.returnTo;
    } else {
      json[r'return_to'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSubscriptionBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSubscriptionBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSubscriptionBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSubscriptionBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSubscriptionBody(
        planOrPrice: mapValueOfType<String>(json, r'plan_or_price')!,
        returnTo: mapValueOfType<String>(json, r'return_to'),
      );
    }
    return null;
  }

  static List<UpdateSubscriptionBody>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSubscriptionBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSubscriptionBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSubscriptionBody> mapFromJson(dynamic json) {
    final map = <String, UpdateSubscriptionBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSubscriptionBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSubscriptionBody-objects as value to a dart map
  static Map<String, List<UpdateSubscriptionBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSubscriptionBody>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSubscriptionBody.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'plan_or_price',
  };
}

