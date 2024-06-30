import 'package:flutter/material.dart';
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
              onPressed: () => context.go('/page1'),
              child: Text('Ir a pagina 1'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page2'),
              child: Text('Ir a pagina 2'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page3'),
              child: Text('Ir a pagina 3'),
            ),
          ],
        ),
      ),
    );
  }
}
