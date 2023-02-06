import 'package:mattgonewild.com/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repo/user_repo.dart';

import 'routes/routes.dart';

void main() {
  runApp(const Web());
}

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepo>(create: (context) => UserRepo()),
      ],
      child: BlocProvider(
        create: (context) => UserBloc(
          userRepo: RepositoryProvider.of<UserRepo>(context),
        ),
        child: const WebView(),
      ),
    );
  }
}

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool _setup = false;

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) {
            if (_setup == false) {
              _setup = true;
              return true;
            }
            return previous.isLoggedIn != current.isLoggedIn;
          },
          listener: (context, state) {
            _navigator.pushAndRemoveUntil<void>(App.route(), (route) => false);
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
