import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text('Ir a Inicio <atras>'),
        ),
      ),
    );
  }
}
