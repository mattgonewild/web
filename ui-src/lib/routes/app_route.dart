import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';
import 'package:mattgonewild.com/user/bloc/user_bloc.dart';
import 'package:sign_in_button/sign_in_button.dart';

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

class LoginLogout extends StatelessWidget {
  const LoginLogout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
        buildWhen: (previous, current) =>
            previous.isLoggedIn != current.isLoggedIn,
        builder: (context, state) => !state.isLoggedIn
            ? SignInButton(Buttons.gitHub,
                onPressed: () => context
                    .read<UserBloc>()
                    .add(const UserRequestedLogin(AuthProvider.github)))
            : SignInButtonBuilder(
                text: 'Logout',
                icon: Icons.logout,
                onPressed: () =>
                    context.read<UserBloc>().add(const UserRequestedLogout()),
                backgroundColor: const Color(0xFF444444),
              ));
  }
}
