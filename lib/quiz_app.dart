import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  QuizApp(
      title: 'Quiz Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Home'),
        ),
        body: Center(
          child: Text('Welcome to the Quiz App!'),
        ),
      ),
    ) ;

  }
}