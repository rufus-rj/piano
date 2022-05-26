import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

class MainKey extends StatefulWidget {
  final String bkey;
  int a;

  MainKey({required this.bkey, required this.a});

  @override
  State<MainKey> createState() => _MainKeyState();
}

class _MainKeyState extends State<MainKey> {
  static AudioCache player = AudioCache();
  void onTap() {

    player.play('${widget.bkey}.mp3');
  }

  // Color getColor()
  // {
  //   return Colors
  // }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: widget.a == 1 ? Colors.blueAccent : Colors.white,
          border: Border.all(color: Colors.black)),
      height: 170,
      width: 48,
      child: TextButton(
          onPressed: () {
            onTap();
          },
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(widget.bkey,
                  style: TextStyle(color: Colors.indigo,fontSize: 20)))),
    );
  }
}
