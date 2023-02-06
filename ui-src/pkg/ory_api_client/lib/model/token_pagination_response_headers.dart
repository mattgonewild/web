//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ory_api_client;

class TokenPaginationResponseHeaders {
  /// Returns a new [TokenPaginationResponseHeaders] instance.
  TokenPaginationResponseHeaders({
    this.link,
    this.xTotalCount,
  });

  /// The Link HTTP Header  The `Link` header contains a comma-delimited list of links to the following pages:  first: The first page of results. next: The next page of results. prev: The previous page of results. last: The last page of results.  Pages are omitted if they do not exist. For example, if there is no next page, the `next` link is omitted. Examples:  </clients?page_size=5&page_token=0>; rel=\"first\",</clients?page_size=5&page_token=15>; rel=\"next\",</clients?page_size=5&page_token=5>; rel=\"prev\",</clients?page_size=5&page_token=20>; rel=\"last\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// The X-Total-Count HTTP Header  The `X-Total-Count` header contains the total number of items in the collection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? xTotalCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenPaginationResponseHeaders &&
     other.link == link &&
     other.xTotalCount == xTotalCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (link == null ? 0 : link!.hashCode) +
    (xTotalCount == null ? 0 : xTotalCount!.hashCode);

  @override
  String toString() => 'TokenPaginationResponseHeaders[link=$link, xTotalCount=$xTotalCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.xTotalCount != null) {
      json[r'x-total-count'] = this.xTotalCount;
    } else {
      json[r'x-total-count'] = null;
    }
    return json;
  }

  /// Returns a new [TokenPaginationResponseHeaders] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenPaginationResponseHeaders? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenPaginationResponseHeaders[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenPaginationResponseHeaders[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenPaginationResponseHeaders(
        link: mapValueOfType<String>(json, r'link'),
        xTotalCount: mapValueOfType<int>(json, r'x-total-count'),
      );
    }
    return null;
  }

  static List<TokenPaginationResponseHeaders>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPaginationResponseHeaders>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPaginationResponseHeaders.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenPaginationResponseHeaders> mapFromJson(dynamic json) {
    final map = <String, TokenPaginationResponseHeaders>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenPaginationResponseHeaders.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenPaginationResponseHeaders-objects as value to a dart map
  static Map<String, List<TokenPaginationResponseHeaders>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenPaginationResponseHeaders>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenPaginationResponseHeaders.listFromJson(entry.value, growable: growable,);
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

