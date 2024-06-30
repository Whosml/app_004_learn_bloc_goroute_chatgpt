import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_bloc.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Page2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2.1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<NavigationBloc>().add(NavigateToPage('/page2'));
            context.go('/page2');
          },
          child: Text('Ir a pagina 2 <atras>'),
        ),
      ),
    );
  }
}
