import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("latihan media query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers(),
            )
          : Row(
              children: generateContainers(),
            ),
      // body: Container(
      //   color: Colors.red,
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      // ),
    );
  }

  List<Widget> generateContainers() {
    return [
      ListView(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.brown,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.purple,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
          ),
        ],
      ),
    ];
  }
}
