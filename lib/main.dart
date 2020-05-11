import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask a Question"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  String _text = "";
  var _answers = ["Yes!", "No!", "Ask Again\nLater", "Decidedly\nSo"];
  var _images = ["images/magic8ball1.jpeg", "images/magic8ball2.jpeg"];

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          setState(() {
            _text = _answers[Random().nextInt(_answers.length)];
          });
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(_images[Random().nextInt(_images.length)]),
              ),
            ),
            Center(
              child: Text(
                _text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.purple.shade400),
              ),
            ),
          ],
        ));
  }
}
