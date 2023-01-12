import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuestion;
  final int _maxScore;

  Result(this.resultScore, this.resetQuestion, this._maxScore);

  String get resultPhrase {
    String resultText;
    if (resultScore == _maxScore) {
      resultText = 'Outstanding Performance!';
    } else if (resultScore >= 2) {
      resultText = 'Good work, keep improving!';
    } else if (resultScore >= 1) {
      resultText = 'Average performance, focus on improvement!';
    } else {
      resultText = 'Need to work harder, seek help if needed!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${resultPhrase}",
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Score: ${resultScore}/${_maxScore}",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange.shade200),
                    foregroundColor:
                        MaterialStateProperty.all(Colors.blue.shade900),
                    shadowColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: resetQuestion,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 25),
                )),
          ],
        ));
  }
}
