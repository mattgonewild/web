import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';
import 'package:mattgonewild.com/user/bloc/user_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App extends StatefulWidget {
  const App({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const App());
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _focusNode = FocusNode();
  final List<KeyDownEvent> _keys = List.empty(growable: true);

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true,
        onKeyEvent: (event) {
          switch (event.runtimeType) {
            case KeyDownEvent:
              _keys.add(event as KeyDownEvent);
              if (event.logicalKey == LogicalKeyboardKey.altLeft) {
                context.read<UserBloc>().add(const UserRequestedThemeChange());
              }
              break;
            case KeyUpEvent:
              _keys.clear();
              break;
            case KeyRepeatEvent:
              break;
          }
        },
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                flex: 12,
                child: Terminal(),
              ),
              Expanded(child: Prompt()),
            ]),
      ),
    );
  }
}

class Terminal extends StatelessWidget {
  const Terminal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          previous.themeState != current.themeState,
      builder: (context, state) => Container(
        color: Colors.green,
        child: Text(
          'I am terminal.',
          style: RepositoryProvider.of<UserRepo>(context)
              .themeManager
              .getTheme()
              .primaryTextTheme
              .displayLarge,
        ),
      ),
    );
  }
}

class Prompt extends StatelessWidget {
  const Prompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Container(
          color: Colors.grey,
          child: const Text('...@mattgonewild.com'),
        )),
        const LoginLogout(),
      ],
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    context.read<UserBloc>().add(const UserRequestedLogin(AuthProvider.github));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.error != '') {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          setState(() => _isLoading = false);
        }
      },
      child: OutlinedButton.icon(
        onPressed: _isLoading ? null : _onSubmit,
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(16.0)),
        icon: _isLoading
            ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2.0),
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3,
                ),
              )
            : const FaIcon(FontAwesomeIcons.github),
        label: const Text('Login with GitHub'),
      ),
    );
  }
}

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    context.read<UserBloc>().add(const UserRequestedLogout());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.error != '') {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          setState(() => _isLoading = false);
        }
      },
      child: OutlinedButton.icon(
        onPressed: _isLoading ? null : _onSubmit,
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(16.0)),
        icon: _isLoading
            ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2.0),
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3,
                ),
              )
            : const Icon(Icons.logout),
        label: const Text('Logout'),
      ),
    );
  }
}

class LoginLogout extends StatelessWidget {
  const LoginLogout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          previous.isLoggedIn != current.isLoggedIn,
      builder: (context, state) =>
          state.isLoggedIn ? const Logout() : const Login(),
    );
  }
}
