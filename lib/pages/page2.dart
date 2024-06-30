import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/page2_1'),
              child: Text('Ir a pagina 2.1'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text('Ir a Inicio <atras>'),
            ),
          ],
        ),
      ),
    );
  }
}
