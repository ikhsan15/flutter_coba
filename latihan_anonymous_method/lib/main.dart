import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("anonymous method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                child: Text("tekan saya"),
                // anonymus method = hanya di pake 1x saja (kalo ada parameter tulis){programcode}
                onPressed: () {
                  setState(() {
                    message = "Tombol Udah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
