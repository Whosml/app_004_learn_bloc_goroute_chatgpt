import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1.1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/page1'),
          child: Text('Ir a pagina 1 <atras>'),
        ),
      ),
    );
  }
}
