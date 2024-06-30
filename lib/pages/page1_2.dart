import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_bloc.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Page1_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1.2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<NavigationBloc>().add(NavigateToPage('/page1'));
            context.go('/page1');
          },
          child: Text('Ir a pagina 1 <atras>'),
        ),
      ),
    );
  }
}
