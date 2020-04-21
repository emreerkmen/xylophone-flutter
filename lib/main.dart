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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    child: Text(nouns.last),
                  ),
                  FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Text(nouns.first),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
