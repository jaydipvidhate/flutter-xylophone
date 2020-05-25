
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buldKey({Color color,int soundNumber}){
    return  Expanded(
      child: FlatButton(onPressed: (){
        playSound(soundNumber);
      },
      color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
          Container(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buldKey(color: Colors.red[900],soundNumber: 1),
                  buldKey(color: Colors.red[800],soundNumber: 2),
                  buldKey(color: Colors.red[700],soundNumber: 3),
                  buldKey(color: Colors.red[600],soundNumber: 4),
                  buldKey(color: Colors.red,     soundNumber: 5),
                  buldKey(color: Colors.red[400],soundNumber: 6),
                  buldKey(color: Colors.red[300],soundNumber: 7),

                ],
              ),
            )

          ),
      ),
    );
  }
}
