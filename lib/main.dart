import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({required Color color,required int soundNumber}){
   return Expanded(
      child: TextButton(
        onPressed: () async  {
          final player = AudioPlayer();
          await player.play(
            AssetSource("note$soundNumber.wav"),
          );
        },
        child: Container(color:color),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              children:<Widget> [
                buildKey(color: Colors.red,soundNumber: 1),
                buildKey(color: Colors.orange,soundNumber: 2),
                buildKey(color: Colors.yellow,soundNumber: 3),
                buildKey(color: Colors.green,soundNumber: 4),
                buildKey(color: Colors.green.shade900,soundNumber: 5),
                buildKey(color: Colors.blue,soundNumber: 6),
                buildKey(color: Colors.purple,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}