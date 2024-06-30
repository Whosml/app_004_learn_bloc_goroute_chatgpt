import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_bloc.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(NavigateToPage('/page1'));
                context.go('/page1');
              },
              child: Text('Ir a pagina 1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(NavigateToPage('/page2'));
                context.go('/page2');
              },
              child: Text('Ir a pagina 2'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(NavigateToPage('/page3'));
                context.go('/page3');
              },
              child: Text('Ir a pagina 3'),
            ),
          ],
        ),
      ),
    );
  }
}
