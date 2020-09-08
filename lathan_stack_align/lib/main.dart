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
          title: Text("latihan stack align"),
        ),
        body: Stack(
          children: [
            // Background
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    ))
              ],
            ),
            // list view dengan text
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "ini adalah text yang ada di lapisan tengah dari stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                  ],
                )
              ],
            ),
            // button di bengah bawah
            Align(
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                  child: Text("my button"),
                  color: Colors.red,
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
