import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Color.fromARGB(221, 23, 0, 225),
              side:
                  BorderSide(width: 2, color: Color.fromARGB(221, 23, 0, 225)),
              minimumSize: Size(88, 36),
              padding: EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            child: Text(
              'Restart Quiz!',
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
