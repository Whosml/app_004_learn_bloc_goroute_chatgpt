import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_bloc.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<NavigationBloc>().add(NavigateToPage('/'));
                context.go('/');
              },
              child: Text('Ir a Inicio <atras>'),
            ),
          ],
        ),
      ),
    );
  }
}