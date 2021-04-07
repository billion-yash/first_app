import 'package:first_app/Answer.dart';
import 'package:flutter/material.dart';

import './Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int index = 0;
  var que = [
    {
      "que": "Which  your favourite animal?",
      "answers": ["zebra", "only zebra", "sirf zebra"],
    },
    {
      "que": "Which is your country?",
      "answers": ["India", "zebra", "ganesh"],
    },
    {
      "que": "Which is your favourite bird?",
      "answers": ["hen", "only zebra", "zebra"],
    },
  ];

  void onButtonPressed() {
    setState(incrementIndex);
  }

  void incrementIndex() {
    index++;
    if (index >= que.length) {
      index = 0;
    }
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Yash Dhnalobhe'),
        ),
        body: Column(children: [
          Question(que[index]["que"]),
          ...(que[index]["answers"] as List<String>)
              .map((ans) => Answer(ans, onButtonPressed))
              .toList(),
          // Answer("1", onButtonPressed),
          // Answer("2", onButtonPressed),
          // Answer("3", onButtonPressed),
        ]),
      ),
    );
  }
}
