// ignore_for_file: file_names, always_specify_types

import 'package:flutter/material.dart';

class Pag1 extends StatelessWidget {
  const Pag1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            'Teme',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(35),
              child: ElevatedButton(
                child: const Text(
                  'Convertor',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/2');
                },
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                child: const Text(
                  'Squere & Cube',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
