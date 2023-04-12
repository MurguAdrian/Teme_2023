

// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';

import 'Home.dart';
import 'convertor.dart';
import 'sqaure_cube2023.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      title: 'Test',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Pag1(),
        '/2': (BuildContext context) => const Pag2(),
        '/3': (BuildContext context) => const Page3(),
      },
    ),
  );
}
