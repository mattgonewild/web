import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';
import 'package:mattgonewild.com/user/bloc/user_bloc.dart';

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
        child: Column(children: [
          Expanded(
            child: Row(children: const [
              Expanded(
                child: Terminal(),
              ),
              Expanded(
                child: UserCard(),
              ),
            ]),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: Viewport()),
              ],
            ),
          )
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
        child: Column(
          children: [
            Text(
              'I am terminal.',
              style: RepositoryProvider.of<UserRepo>(context)
                  .themeManager
                  .getTheme()
                  .primaryTextTheme
                  .displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => Container(
        color: Colors.amber,
        child: Column(
          children: [
            const Text(
                'I am user. Click <alt left> to toggle between light or dark themes.'),
            TextButton(
              onPressed: () => context
                  .read<UserBloc>()
                  .add(const UserRequestedLogin(AuthProvider.github)),
              child: const Text('Login with GitHub'),
            ),
            TextButton(
              onPressed: () =>
                  context.read<UserBloc>().add(const UserRequestedLogout()),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

class Viewport extends StatelessWidget {
  const Viewport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Text(
                'I am viewport. Theme is dark: ${RepositoryProvider.of<UserRepo>(context).themeManager.isDark}'),
            Text(context
                .select((UserBloc bloc) => bloc.state.themeState.toString()))
          ],
        ),
      ),
    );
  }
}
