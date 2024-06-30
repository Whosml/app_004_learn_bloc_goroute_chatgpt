import 'package:flutter/material.dart';
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
          onPressed: () => context.go('/page2'),
          child: Text('Ir a pagina 2 <atras>'),
        ),
      ),
    );
  }
}
