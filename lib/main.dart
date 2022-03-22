import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'page/home.dart';

void main() => runApp(ProviderScope(child: App()));

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'Lyrics generator',
      );

  final _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
  ]);
}
