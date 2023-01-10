import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ElevatedButton(
            onPressed: selectHandler, child: Text(answerText,style: TextStyle(fontSize: 20),)));
  }
}
