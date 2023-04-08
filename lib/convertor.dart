import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag2 extends StatefulWidget {
  const Pag2({Key? key}) : super(key: key);

  @override
  State<Pag2> createState() => _Pag2State();
}

class _Pag2State extends State<Pag2> {
  TextEditingController _controller = TextEditingController();

  double input = 0;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Currency Convertor',
          style: TextStyle(fontSize: 20, letterSpacing: 5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://www.cec.ro/sites/default/files/img/media/2021-06/curs%20valutar.jpg'),
            TextField(
              textAlign: TextAlign.center,
              controller: _controller,
              onChanged: (String value) {
                setState(
                  () {
                    final double? x = double.tryParse(value);
                    if (x == null) {
                      errorText = 'Introdu Doar Numere';
                    } else {
                      input = x;
                      errorText = null;
                    }
                  },
                );
              },
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                  hintText: 'Introdu Suma in Euro',
                  errorText: errorText,
                  errorStyle: TextStyle(fontSize: 15),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _controller.clear();
                          input = 0;
                        });
                      })),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Text(
                '${(input * 4.95).toStringAsFixed(2)} RON ',
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
