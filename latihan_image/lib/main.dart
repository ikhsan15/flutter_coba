import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan image"),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
                // image: NetworkImage(
                //     "https://static.wikia.nocookie.net/dynastywarriors/images/a/af/Yukimura_Sanada_%28NATS-PUK%29.png"),
                image: AssetImage("assets/goku.jpg"),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat),
          ),
        ),
      ),
    );
  }
}
