

import 'package:flutter/material.dart';

import 'Home.dart';
import 'convertor.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      title: 'Test',
      initialRoute: '/',
      routes: {
        '/': (context) => const Pag1(),
        '/2': (context) => const Pag2(),

      },
    ),
  );
}





