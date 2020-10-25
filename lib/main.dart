import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "Whats your favourite color?",
      'answers': [
        {'text': 'Black', 'score' : 1}, 
        {'text': 'Red', 'score' : 2}, 
        {'text': 'Green', 'score' : 3}, 
        {'text': 'White', 'score' : 4}
      ]
    },
    {
      'questionText': "Whats your favourite animal?",
      'answers': [
        {'text': 'Monkey', 'score' : 1}, 
        {'text': 'Turtle', 'score' : 2}, 
        {'text': 'Cat', 'score' : 3}, 
        {'text': 'Dog', 'score' : 4}
      ]
    },
    {
      'questionText': "Whats your favourite day?",
      'answers': [
        {'text': 'Sunday', 'score' : 1}, 
        {'text': 'Monday', 'score' : 2}, 
        {'text': 'Friday', 'score' : 3}, 
        {'text': 'Saturday', 'score' : 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(score) {

    _totalScore += score;
    
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Course App 1'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
