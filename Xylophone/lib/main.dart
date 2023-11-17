import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Map<int, ButtonStyle> getButtonStyles() {
    return {
      1: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      2: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
      ),
      3: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
      ),
      4: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      5: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
      ),
      6: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      7: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
      ),
    };
  }

  Expanded buildKey({required int soundNumber}) => Expanded(
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: getButtonStyles()[soundNumber]!,
          child: Text(''),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1),
              buildKey(soundNumber: 2),
              buildKey(soundNumber: 3),
              buildKey(soundNumber: 4),
              buildKey(soundNumber: 5),
              buildKey(soundNumber: 6),
              buildKey(soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
