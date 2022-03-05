import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  playSound(soundFile) {
    final player = AudioCache();
    player.play('note$soundFile.wav');
  }

  Widget buildWidget(sound, color) {
    return Expanded(
      child: MaterialButton(
          color: color,
          onPressed: () {
            playSound(sound);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildWidget(1, Colors.red),
                buildWidget(2, Colors.orange),
                buildWidget(3, Colors.yellow),
                buildWidget(4, Colors.green),
                buildWidget(5, Colors.pink),
                buildWidget(6, Colors.blue),
                buildWidget(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
