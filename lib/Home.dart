import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag1 extends StatelessWidget {
  const Pag1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'Teme',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(35),
              child: ElevatedButton(
                  child: Text(
                    'Convertor',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/2');
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
