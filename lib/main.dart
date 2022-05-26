import 'package:flutter/material.dart';
import 'componenet/hashkey.dart';
import 'componenet/key.dart';
import 'dart:io';
import 'componenet/five_combined_key.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(home: Piano()));
}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  int _currentValue = 220;
  bool status = false;
  int ckey = 0;
  int dkey = 0;
  int ekey = 0;
  int fkey = 0;
  int gkey = 0;
  int akey = 0;
  int bkey = 0;
  int c_key = 0;
  int d_key = 0;
  int f_key = 0;
  int g_key = 0;
  int a_key = 0;

  static AudioCache player = AudioCache();
  List b = [];
  TextEditingController nameController = TextEditingController();

  void onTap() {
    if (nameController.text.isEmpty == false) {
      b.clear();

      String a = nameController.text;
      for (int i = 0; i < a.length; i++) {
        print("checking a[i]:${a[i]}");
        if (i + 1 < a.length && a[i + 1] == "#") {
          print("entered if a[i+1]:${a[i + 1]}");
          if (a[i] == " ") {
            i = i + 1;
            continue;
          }
          b.add("${a[i]}${a[i + 1]}");
          i = i + 1;
        } else {
          print("entered else ");
          b.add("${a[i]}");
        }
      }
    }

    if (nameController.text.isEmpty == false) {
      int i = 0;
      b.forEach((element) {
        change(element, i);
        i = i + _currentValue;
      });
    }
  }

  void change(String keeyboardKey, int i) async {
    if (keeyboardKey == "C") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        ckey = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          ckey = 0;
        });
      });
    } else if (keeyboardKey == "C#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        c_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          c_key = 0;
        });
      });
    } else if (keeyboardKey == "D") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        dkey = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          dkey = 0;
        });
      });
    } else if (keeyboardKey == "D#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        d_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          d_key = 0;
        });
      });
    } else if (keeyboardKey == "E") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        print("called e after");
        ekey = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          ekey = 0;
        });
      });
    } else if (keeyboardKey == "F") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        fkey = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          fkey = 0;
        });
      });
    } else if (keeyboardKey == "F#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        f_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          f_key = 0;
        });
      });
    } else if (keeyboardKey == "G") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        gkey = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          gkey = 0;
        });
      });
    } else if (keeyboardKey == "G#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        g_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          g_key = 0;
        });
      });
    } else if (keeyboardKey == "A") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        akey = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          akey = 0;
        });
      });
    } else if (keeyboardKey == "A#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        a_key = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          a_key = 0;
        });
      });
    } else if (keeyboardKey == "B") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        bkey = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          bkey = 0;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade500,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 270, right: 10, top: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                      child: Text(
                        "auto music",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: FlutterSwitch(
                        width: 100.0,
                        height: 50.0,
                        valueFontSize: 25.0,
                        toggleSize: 45.0,
                        value: status,
                        borderRadius: 30.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                            print(val);
                          });
                        },
                      ),
                    )
                  ],
                )),


      Align(alignment: Alignment.center,
        child: Column(
          children: [


              Center(
                child: Text(
                  "speed",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
           Container(width:150,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2, color: Colors.grey.shade500)),
              child: NumberPicker(step: 20,
                axis: Axis.horizontal,
                value: _currentValue,
                minValue: 200,
                maxValue: 500,
                onChanged: (value) => setState(() => _currentValue = value),
              ),
            ),]),
      ),

            Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 70, bottom: 50),
              child: TextField(
                onSubmitted: (_) {
                  onTap();
                },
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Key Notes',
                  hintText: 'Enter Key Notes',
                ),
              ),
            ),
            Container(
              width: 48 * 7,
              height: 170,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  MainKey(
                    bkey: "C",
                    a: ckey,
                  ),
                  Positioned(
                    left: 48,
                    child: MainKey(bkey: "D", a: dkey),
                  ),
                  Positioned(
                      left: 28,
                      child: HashKey(
                        bkey: "C#",
                        a: c_key,
                      )),
                  Positioned(
                      left: 48 + 48,
                      child: MainKey(
                        bkey: "E",
                        a: ekey,
                      )),
                  Positioned(
                      left: 80,
                      child: HashKey(
                        bkey: "D#",
                        a: d_key,
                      )),
                  Positioned(left: 48 * 3, child: MainKey(bkey: "F", a: fkey)),
                  Positioned(left: 48 * 4, child: MainKey(bkey: "G", a: gkey)),
                  Positioned(left: 48 * 5, child: MainKey(bkey: "A", a: akey)),
                  Positioned(
                      left: 48 * 6,
                      child: MainKey(
                        bkey: "B",
                        a: bkey,
                      )),
                  Positioned(
                      left: 174,
                      child: HashKey(
                        bkey: "F#",
                        a: f_key,
                      )),
                  Positioned(
                      left: 224,
                      child: HashKey(
                        bkey: "G#",
                        a: g_key,
                      )),
                  Positioned(left: 274, child: HashKey(bkey: "A#", a: a_key)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
