import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _questions = const [
    {
      "questionText":
          "Which programming language is used to build Flutter applications?",
      "answers": [
        {"text": "Dart", "score": 1},
        {"text": "Kotlin", "score": 0},
        {"text": "Python", "score": 0},
        {"text": "Java", "score": 0},
      ]
    },
    {
      "questionText": "How many types of widgets are there in Flutter?",
      "answers": [
        {"text": "1", "score": 0},
        {"text": "2", "score": 1},
        {"text": "3", "score": 0},
        {"text": "4", "score": 0},
      ]
    },
    {
      "questionText":
          "What is the key configuration file used when building a Flutter project?",
      "answers": [
        {"text": "pubspec.xml", "score": 0},
        {"text": "config.html", "score": 0},
        {"text": "pubspec.yaml", "score": 1},
        {"text": "root.xml", "score": 0},
      ]
    }
  ];

  var _questionIndex = 0;
  var _scoreText = 0;

  void _answerQuestion(int score) {
    _scoreText += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _scoreText = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_scoreText, _resetQuestion, _questions.length));
  }
}
