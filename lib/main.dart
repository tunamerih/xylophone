import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MusicButton(
                  title: 'Do',
                  sound: 'note1.wav',
                  player: player,
                  color: Colors.red,
                  note: 'Do',
                ),
                (MusicButton(
                  title: 'Re',
                  sound: 'note2.wav',
                  player: player,
                  color: Colors.orange,
                  note: 'Re',
                )),
                MusicButton(
                  title: 'Mi',
                  sound: 'note3.wav',
                  player: player,
                  color: Colors.yellow,
                  note: 'Mi',
                ),
                MusicButton(
                  title: 'Fa',
                  sound: 'note4.wav',
                  player: player,
                  color: Colors.green,
                  note: 'Fa',
                ),
                MusicButton(
                  title: 'Sol',
                  sound: 'note5.wav',
                  player: player,
                  color: Colors.blue,
                  note: 'Sol',
                ),
                MusicButton(
                  title: 'La',
                  sound: 'note6.wav',
                  player: player,
                  color: Colors.purple,
                  note: 'La',
                ),
                MusicButton(
                  title: 'Si',
                  sound: 'note7.wav',
                  player: player,
                  color: Colors.pinkAccent,
                  note: 'Si',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  final String title;
  final String sound;
  final AudioCache player;
  final Color color;
  final String note;
  MusicButton({this.title, this.sound, this.player, this.color, this.note});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play(sound);
          print(title);
        },
        child: Text(
          note,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        color: color,
      ),
    );
  }
}
