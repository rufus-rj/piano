import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter_switch/flutter_switch.dart';

class HashKey extends StatefulWidget {

  final String bkey;
  int a;
  HashKey({required this.bkey,required this.a});

  @override
  State<HashKey> createState() => _HashKeyState();
}

class _HashKeyState extends State<HashKey> {
  static AudioCache player = AudioCache();

  void initState() {
    super.initState();
    if(  WidgetsBinding.instance!=null)
      {
        WidgetsBinding.instance!
            .addPostFrameCallback((_) => onTap());
      }
  }
 void onTap()
  {

    player.play('${widget.bkey}.mp3');

  }

  @override
  Widget build(BuildContext context) {



    return Container(
      height: 110,
      width: 33,
      color:  widget.a==0?Colors.black:Colors.blueAccent,
      child: TextButton(onPressed:(){
        onTap();
      },child: Align(alignment:Alignment.bottomCenter,child: Text(widget.bkey, style: TextStyle(color: Colors.indigo,fontSize: 18)))),
    );
  }
}
