import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onButtonPressed() {
    print("Hello world");
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    List que = ["que1", "que2"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yash Dhnalobhe'),
        ),
        body: Column(children: [
          Text("ans"),
          RaisedButton(
            onPressed: onButtonPressed,
            child: Text("1"),
            elevation: 3,
          ),
          RaisedButton(
            onPressed: onButtonPressed,
            child: Text("2"),
            elevation: 2,
          ),
          RaisedButton(
            onPressed: () {
              print("Ans2");
            },
            child: Text("3"),
            elevation: 1,
          ),
        ]),
      ),
    );
  }
}
