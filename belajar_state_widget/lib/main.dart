import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tambahAngka() {
    // setState(() { }); perintah untuk me-refresh tampilan
    //                   mengubah tamplan sesuai dengan state yg ada saat ini
    setState(() {
      number += 1;
    });
  }

  void kurangiAngka() {
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("stateful widget demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                onPressed: tambahAngka,
                child: Text("Tambah Bilangan"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: kurangiAngka,
                    child: Text("Kurangi Bilangan"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
