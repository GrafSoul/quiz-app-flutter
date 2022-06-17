import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10,0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blueGrey[900]),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
