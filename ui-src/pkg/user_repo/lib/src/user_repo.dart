import 'dart:async';
import 'package:ory_api_client/api.dart';
import 'package:http/browser_client.dart';
import 'package:url_launcher/url_launcher.dart';

import 'theme.dart';

enum AuthProvider { github, google }

typedef User = Session;

final anonymouse = User(
    id: 'id:anonymouse',
    identity: Identity(id: '', schemaId: '', schemaUrl: '', traits: null));

FrontendApi _newOryFrontendClient() {
  var browserClientWithCredentials = BrowserClient()..withCredentials = true;
  var client = FrontendApi(ApiClient(
    basePath: 'https://auth.mattgonewild.com',
  ));
  client.apiClient.addDefaultHeader("Accept", "application/json");
  client.apiClient.client = browserClientWithCredentials;
  return client;
}

void _launchLink(Uri uri, {bool isNewTab = true}) async {
  await launchUrl(uri, webOnlyWindowName: isNewTab ? '_blank' : '_self');
}

class UserRepo {
  User _user = anonymouse;
  final _themeManager = ThemeManager();
  final _client = _newOryFrontendClient();
  final _controller = StreamController<User>();

  Stream<User> get user async* {
    yield _user;
    yield* _controller.stream;
  }

  ThemeManager get themeManager => _themeManager;

  bool get active => _user.active ?? false;
  String get authenticatedAt =>
      _user.authenticatedAt?.toIso8601String() ?? 'unknown';
  String get sessionExpiresAt =>
      _user.expiresAt?.toIso8601String() ?? 'unknown';
  String get id => _user.id;
  Map<String, dynamic> get identity => _user.identity.toJson();
  String get sessionIssuedAt => _user.issuedAt?.toIso8601String() ?? 'unknown';

  void dispose() {
    _controller.close();
  }

  void init() async {
    try {
      _user = await _whoami();
    } catch (e) {
      // ...
      print(e);
    }
    _controller.add(_user);
  }

  Future<User> _whoami() async {
    try {
      final resp = await _client.toSession();
      if (resp != null) {
        return resp;
      }
    } catch (e) {
      //...
      print(e);
    }
    return anonymouse;
  }

  void login(AuthProvider provider) async {
    try {
      final loginFlow = await _client.createBrowserLoginFlow();
      if (loginFlow == null) {
        return;
      }
      final url = Uri.parse(loginFlow.ui.action);
      _launchLink(
          Uri.https(
              url.authority,
              url.path,
              Map.from(url.queryParametersAll)
                ..addAll({
                  'csrf_token': loginFlow.ui.nodes.last.attributes.value,
                  'provider': provider.name,
                })),
          isNewTab: false);
    } catch (e) {
      // ...
      print(e);
    }
  }

  void logOut() async {
    try {
      final logoutFlow = await _client.createBrowserLogoutFlow();
      if (logoutFlow == null) {
        return;
      }
      final resp = await _client.updateLogoutFlowWithHttpInfo(
          token: logoutFlow.logoutToken);
      if (resp.statusCode == 204) {
        _user = anonymouse;
        _themeManager.resetThemes();
        _controller.add(_user);
      }
    } catch (e) {
      // ...
      print(e);
    }
  }
}
