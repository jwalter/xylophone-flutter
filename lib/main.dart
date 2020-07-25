import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _xButton(Colors.red, 1),
              _xButton(Colors.orange, 2),
              _xButton(Colors.yellow, 3),
              _xButton(Colors.green, 4),
              _xButton(Colors.teal, 5),
              _xButton(Colors.blue, 6),
              _xButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  _xButton(Color noteColor, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: noteColor,
        onPressed: () {
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }
}
