import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String ballAnswerImage = 'ball1.png';

  void askMagic8Ball() {
    setState(() {
      ballAnswerImage = "ball${Random().nextInt(5) + 1}.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: askMagic8Ball,
              child: Image(
                image: AssetImage('images/$ballAnswerImage'),
                width: 400.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
