import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: RaisedButton(
        color: Colors.deepPurple,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 15),),
        onPressed: selectHandler,
      ),
    );
  }
}
