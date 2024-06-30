import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_bloc.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_state.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page1.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page1_1.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page1_2.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page2.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page2_1.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page3.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/pages/page_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: MyAppRouter(),
    );
  }
}

class MyAppRouter extends StatelessWidget {
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => PageMain()),
      GoRoute(path: '/page1', builder: (context, state) => Page1()),
      GoRoute(path: '/page1_1', builder: (context, state) => Page1_1()),
      GoRoute(path: '/page1_2', builder: (context, state) => Page1_2()),
      GoRoute(path: '/page2', builder: (context, state) => Page2()),
      GoRoute(path: '/page2_1', builder: (context, state) => Page2_1()),
      GoRoute(path: '/page3', builder: (context, state) => Page3()),
    ],
    redirect: (context, state) {
      final bloc = context.read<NavigationBloc>();
      if (bloc.state is PageLoaded) {
        final page = (bloc.state as PageLoaded).page;
        return page;
      }
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
