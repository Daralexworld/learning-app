import 'package:flutter/material.dart';

import './questions.dart';

import './answer.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s is you favourite colour?',
        'answers': ['Red', 'Blue', 'White', 'Green']
      },
      {
        'questionText': 'what\'s is your favourite animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Dog']
      },
      {
        'questionText': 'who\'s is your favourite instructor',
        'answers': ['Radoish', 'Lydia', 'Emma', 'Daralex']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex] ['questionText'],
             ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((Answer) {
              return Answer(_answerQuestion, Answer);
            }).toList()
          ],
        ),
      ),
    );
  } //scaffold MaterialApp
}
