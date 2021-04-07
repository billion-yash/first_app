import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function handlerFuntion;
  Answer(this.text, this.handlerFuntion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: handlerFuntion,
        elevation: 10,
      ),
    );
  }
}
