//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class UiNodeAttributes {
  /// Returns a new [UiNodeAttributes] instance.
  UiNodeAttributes({
    this.autocomplete,
    required this.disabled,
    this.label,
    required this.name,
    required this.nodeType,
    this.onclick,
    this.pattern,
    this.required_,
    required this.type,
    this.value,
    required this.id,
    required this.text,
    required this.height,
    required this.src,
    required this.width,
    required this.href,
    required this.title,
    required this.async_,
    required this.crossorigin,
    required this.integrity,
    required this.nonce,
    required this.referrerpolicy,
  });

  /// The autocomplete attribute for the input. email InputAttributeAutocompleteEmail tel InputAttributeAutocompleteTel url InputAttributeAutocompleteUrl current-password InputAttributeAutocompleteCurrentPassword new-password InputAttributeAutocompleteNewPassword one-time-code InputAttributeAutocompleteOneTimeCode
  UiNodeAttributesAutocompleteEnum? autocomplete;

  /// Sets the input's disabled field to true or false.
  bool disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UiText? label;

  /// The input's element name.
  String name;

  /// NodeType represents this node's types. It is a mirror of `node.type` and is primarily used to allow compatibility with OpenAPI 3.0. In this struct it technically always is \"script\".
  String nodeType;

  /// OnClick may contain javascript which should be executed on click. This is primarily used for WebAuthn.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? onclick;

  /// The input's pattern.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pattern;

  /// Mark this input field as required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? required_;

  /// The script MIME type
  String type;

  /// The input's value.
  Object? value;

  /// A unique identifier
  String id;

  UiText text;

  /// Height of the image
  int height;

  /// The script source
  String src;

  /// Width of the image
  int width;

  /// The link's href (destination) URL.  format: uri
  String href;

  UiText title;

  /// The script async type
  bool async_;

  /// The script cross origin policy
  String crossorigin;

  /// The script's integrity hash
  String integrity;

  /// Nonce for CSP  A nonce you may want to use to improve your Content Security Policy. You do not have to use this value but if you want to improve your CSP policies you may use it. You can also choose to use your own nonce value!
  String nonce;

  /// The script referrer policy
  String referrerpolicy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UiNodeAttributes &&
          other.autocomplete == autocomplete &&
          other.disabled == disabled &&
          other.label == label &&
          other.name == name &&
          other.nodeType == nodeType &&
          other.onclick == onclick &&
          other.pattern == pattern &&
          other.required_ == required_ &&
          other.type == type &&
          other.value == value &&
          other.id == id &&
          other.text == text &&
          other.height == height &&
          other.src == src &&
          other.width == width &&
          other.href == href &&
          other.title == title &&
          other.async_ == async_ &&
          other.crossorigin == crossorigin &&
          other.integrity == integrity &&
          other.nonce == nonce &&
          other.referrerpolicy == referrerpolicy;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (autocomplete == null ? 0 : autocomplete!.hashCode) +
      (disabled.hashCode) +
      (label == null ? 0 : label!.hashCode) +
      (name.hashCode) +
      (nodeType.hashCode) +
      (onclick == null ? 0 : onclick!.hashCode) +
      (pattern == null ? 0 : pattern!.hashCode) +
      (required_ == null ? 0 : required_!.hashCode) +
      (type.hashCode) +
      (value == null ? 0 : value!.hashCode) +
      (id.hashCode) +
      (text.hashCode) +
      (height.hashCode) +
      (src.hashCode) +
      (width.hashCode) +
      (href.hashCode) +
      (title.hashCode) +
      (async_.hashCode) +
      (crossorigin.hashCode) +
      (integrity.hashCode) +
      (nonce.hashCode) +
      (referrerpolicy.hashCode);

  @override
  String toString() =>
      'UiNodeAttributes[autocomplete=$autocomplete, disabled=$disabled, label=$label, name=$name, nodeType=$nodeType, onclick=$onclick, pattern=$pattern, required_=$required_, type=$type, value=$value, id=$id, text=$text, height=$height, src=$src, width=$width, href=$href, title=$title, async_=$async_, crossorigin=$crossorigin, integrity=$integrity, nonce=$nonce, referrerpolicy=$referrerpolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.autocomplete != null) {
      json[r'autocomplete'] = this.autocomplete;
    } else {
      json[r'autocomplete'] = null;
    }
    json[r'disabled'] = this.disabled;
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    json[r'name'] = this.name;
    json[r'node_type'] = this.nodeType;
    if (this.onclick != null) {
      json[r'onclick'] = this.onclick;
    } else {
      json[r'onclick'] = null;
    }
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    json[r'type'] = this.type;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    json[r'id'] = this.id;
    json[r'text'] = this.text;
    json[r'height'] = this.height;
    json[r'src'] = this.src;
    json[r'width'] = this.width;
    json[r'href'] = this.href;
    json[r'title'] = this.title;
    json[r'async'] = this.async_;
    json[r'crossorigin'] = this.crossorigin;
    json[r'integrity'] = this.integrity;
    json[r'nonce'] = this.nonce;
    json[r'referrerpolicy'] = this.referrerpolicy;
    return json;
  }

  /// Returns a new [UiNodeAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UiNodeAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          /*if (key != 'id' && key != 'text') {
            assert(json.containsKey(key),
                'Required key "UiNodeAttributes[$key]" is missing from JSON.');
            assert(json[key] != null,
                'Required key "UiNodeAttributes[$key]" has a null value in JSON.');
          }*/
        });
        return true;
      }());

      return UiNodeAttributes(
        autocomplete:
            UiNodeAttributesAutocompleteEnum.fromJson(json[r'autocomplete']),
        disabled: mapValueOfType<bool>(json, r'disabled') ?? false,
        label: UiText.fromJson(json[r'label']),
        name: mapValueOfType<String>(json, r'name') ?? 'UiNodeAttributes:null',
        nodeType: mapValueOfType<String>(json, r'node_type') ??
            'UiNodeAttributes:null',
        onclick: mapValueOfType<String>(json, r'onclick'),
        pattern: mapValueOfType<String>(json, r'pattern'),
        required_: mapValueOfType<bool>(json, r'required'),
        type: mapValueOfType<String>(json, r'type') ?? 'UiNodeAttributes:null',
        value: mapValueOfType<Object>(json, r'value'),
        id: mapValueOfType<String>(json, r'id') ?? 'UiNodeAttributes:null',
        text: UiText.fromJson(json[r'text']) ??
            UiText(
                id: 0,
                text: 'UiNodeAttributes:null',
                type: UiTextTypeEnum.error),
        height: mapValueOfType<int>(json, r'height') ?? 0,
        src: mapValueOfType<String>(json, r'src') ?? 'UiNodeAttributes:null',
        width: mapValueOfType<int>(json, r'width') ?? 0,
        href: mapValueOfType<String>(json, r'href') ?? 'UiNodeAttributes:null',
        title: UiText.fromJson(json[r'title']) ??
            UiText(
                id: 0,
                text: 'UiNodeAttributes:null',
                type: UiTextTypeEnum.error),
        async_: mapValueOfType<bool>(json, r'async') ?? false,
        crossorigin: mapValueOfType<String>(json, r'crossorigin') ??
            'UiNodeAttributes:null',
        integrity: mapValueOfType<String>(json, r'integrity') ??
            'UiNodeAttributes:null',
        nonce:
            mapValueOfType<String>(json, r'nonce') ?? 'UiNodeAttributes:null',
        referrerpolicy: mapValueOfType<String>(json, r'referrerpolicy') ??
            'UiNodeAttributes:null',
      );
    }
    return null;
  }

  static List<UiNodeAttributes>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UiNodeAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UiNodeAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UiNodeAttributes> mapFromJson(dynamic json) {
    final map = <String, UiNodeAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UiNodeAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UiNodeAttributes-objects as value to a dart map
  static Map<String, List<UiNodeAttributes>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UiNodeAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UiNodeAttributes.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disabled',
    'name',
    'node_type',
    'type',
    'id',
    'text',
    'height',
    'src',
    'width',
    'href',
    'title',
    'async',
    'crossorigin',
    'integrity',
    'nonce',
    'referrerpolicy',
  };
}

/// The autocomplete attribute for the input. email InputAttributeAutocompleteEmail tel InputAttributeAutocompleteTel url InputAttributeAutocompleteUrl current-password InputAttributeAutocompleteCurrentPassword new-password InputAttributeAutocompleteNewPassword one-time-code InputAttributeAutocompleteOneTimeCode
class UiNodeAttributesAutocompleteEnum {
  /// Instantiate a new enum with the provided [value].
  const UiNodeAttributesAutocompleteEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = UiNodeAttributesAutocompleteEnum._(r'email');
  static const tel = UiNodeAttributesAutocompleteEnum._(r'tel');
  static const url = UiNodeAttributesAutocompleteEnum._(r'url');
  static const currentPassword =
      UiNodeAttributesAutocompleteEnum._(r'current-password');
  static const newPassword =
      UiNodeAttributesAutocompleteEnum._(r'new-password');
  static const oneTimeCode =
      UiNodeAttributesAutocompleteEnum._(r'one-time-code');

  /// List of all possible values in this [enum][UiNodeAttributesAutocompleteEnum].
  static const values = <UiNodeAttributesAutocompleteEnum>[
    email,
    tel,
    url,
    currentPassword,
    newPassword,
    oneTimeCode,
  ];

  static UiNodeAttributesAutocompleteEnum? fromJson(dynamic value) =>
      UiNodeAttributesAutocompleteEnumTypeTransformer().decode(value);

  static List<UiNodeAttributesAutocompleteEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UiNodeAttributesAutocompleteEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UiNodeAttributesAutocompleteEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UiNodeAttributesAutocompleteEnum] to String,
/// and [decode] dynamic data back to [UiNodeAttributesAutocompleteEnum].
class UiNodeAttributesAutocompleteEnumTypeTransformer {
  factory UiNodeAttributesAutocompleteEnumTypeTransformer() =>
      _instance ??= const UiNodeAttributesAutocompleteEnumTypeTransformer._();

  const UiNodeAttributesAutocompleteEnumTypeTransformer._();

  String encode(UiNodeAttributesAutocompleteEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UiNodeAttributesAutocompleteEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UiNodeAttributesAutocompleteEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email':
          return UiNodeAttributesAutocompleteEnum.email;
        case r'tel':
          return UiNodeAttributesAutocompleteEnum.tel;
        case r'url':
          return UiNodeAttributesAutocompleteEnum.url;
        case r'current-password':
          return UiNodeAttributesAutocompleteEnum.currentPassword;
        case r'new-password':
          return UiNodeAttributesAutocompleteEnum.newPassword;
        case r'one-time-code':
          return UiNodeAttributesAutocompleteEnum.oneTimeCode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UiNodeAttributesAutocompleteEnumTypeTransformer] instance.
  static UiNodeAttributesAutocompleteEnumTypeTransformer? _instance;
}
