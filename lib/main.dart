import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  createButton(Colors.green,1),
                  createButton(Colors.yellow,2),
                  createButton(Colors.orange,3),
                  createButton(Colors.red,4),
                  createButton(Colors.pink,5),
                  createButton(Colors.purple,6),
                  createButton(Colors.blue,7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget createButton(Color color,int soundNumber) => Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Text(nouns[soundNumber].toString()),
      ),
    );
