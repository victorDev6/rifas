import 'package:flutter/material.dart';

import 'cuerpo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rifas Leonel',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Cuerpo(),
      //home: const MyHomePage(title: 'Rifas Leonel'),
    );
  }
}
