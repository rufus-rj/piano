import 'package:flutter/material.dart';
import 'componenet/hashkey.dart';
import 'componenet/key.dart';
import 'dart:io';
import 'componenet/five_combined_key.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:audioplayers/audioplayers.dart';
import 'songs.dart';
import 'package:flutter/services.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MaterialApp(home: Piano()));
  });

}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  List<Songs> songs = [
    Songs(
        image: "images/1.jpg", name: "fur elise", keyCode: "E D# ED# B D C E"),
    Songs(
        image: "images/2.jpg",
        name: "beethoven",
        keyCode: "E1 D1# E1 D1# B1 D1 C1 E1"),
  ];
  int _currentValue = 110;
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

  int c1key = 0;
  int d1key = 0;
  int e1key = 0;
  int f1key = 0;
  int g1key = 0;
  int a1key = 0;
  int b1key = 0;
  int c1_key = 0;
  int d1_key = 0;
  int f1_key = 0;
  int g1_key = 0;
  int a1_key = 0;
  int currentIndex=0;
  int flag = 0;

  static AudioCache player = AudioCache();
  List b = [];
  TextEditingController nameController = TextEditingController();

  void onTap() {
    if (flag == 1) {
   nameController.text=songs[currentIndex].keyCode;
      flag = 0;
    }

    if (nameController.text.isEmpty == false) {
      b.clear();

      String a = nameController.text.toUpperCase();
      for (int i = 0; i < a.length; i++) {
        if (a[i] != " " && i + 1 < a.length && a[i + 1] == "1") {
          if (i + 2 < a.length && a[i + 2] == "#") {
            b.add("${a[i]}${a[i + 1]}${a[i + 2]}");
            i = i + 2;
          } else {
            b.add("${a[i]}${a[i + 1]}");
            i = i + 1;
          }
        } else if (a[i] != " " && i + 1 < a.length && a[i + 1] == "#") {
          b.add("${a[i]}${a[i + 1]}");

          i = i + 1;
        } else {
          print("entered else ");

          b.add(a[i]);
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
    } else if (keeyboardKey == "C1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        c1key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          c1key = 0;
        });
      });
    } else if (keeyboardKey == "C1#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        c1_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          c1_key = 0;
        });
      });
    } else if (keeyboardKey == "D1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        d1key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          d1key = 0;
        });
      });
    } else if (keeyboardKey == "D1#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        d1_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          d1_key = 0;
        });
      });
    } else if (keeyboardKey == "E1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        print("called e after");
        e1key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          e1key = 0;
        });
      });
    } else if (keeyboardKey == "F1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        f1key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          f1key = 0;
        });
      });
    } else if (keeyboardKey == "F1#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        f1_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          f1_key = 0;
        });
      });
    } else if (keeyboardKey == "G1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        g1key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          g1key = 0;
        });
      });
    } else if (keeyboardKey == "G1#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        g1_key = 1;
      });

      if (status) {
        player.play('${keeyboardKey}.mp3');
      }

      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          g1_key = 0;
        });
      });
    } else if (keeyboardKey == "A1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        a1key = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          a1key = 0;
        });
      });
    } else if (keeyboardKey == "A1#") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        a1_key = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          a1_key = 0;
        });
      });
    } else if (keeyboardKey == "B1") {
      await Future.delayed(Duration(milliseconds: i));
      setState(() {
        b1key = 1;
      });
      if (status) {
        player.play('${keeyboardKey}.mp3');
      }
      await Future.delayed(const Duration(milliseconds: 600), () {
        setState(() {
          b1key = 0;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(top: 10),
                  width: 420,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          spreadRadius: 0.4,
                          offset: Offset(
                              -1.0, 1.0), // shadow direction: bottom right
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 18),
                            child: Column(children: [
                              Center(
                                child: Text(
                                  "speed",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 300,
                                margin: EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2, color: Colors.grey.shade500)),
                                child: NumberPicker(
                                  step: 10,
                                  axis: Axis.horizontal,
                                  value: _currentValue,
                                  minValue: 100,
                                  maxValue: 500,
                                  onChanged: (value) =>
                                      setState(() => _currentValue = value),
                                ),
                              ),
                            ]),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 0, right: 0, top: 0),
                                child: Text(
                                  "auto music",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: FlutterSwitch(
                                  width: 67.0,
                                  height: 35.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 25.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 7.0,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                      print(val);
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 5, bottom: 15, left: 15, right: 5),
                        width: 300,
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
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 180,
                      width: 200,
                      child: Swiper(
                        itemWidth: 170,
                        itemHeight: 170,
                        layout: SwiperLayout.STACK,
                        itemBuilder: (context, index) {
                          currentIndex=index;
                          return Stack(
                            children: [
                              Image.asset(
                                songs[index].image,
                                fit: BoxFit.fill,
                              ),
                              Positioned(
                                  top: 120,
                                  child: Text(
                                    songs[index].name,
                                    style: TextStyle(
                                        backgroundColor: Colors.black,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ))
                            ],
                          );
                        },
                        indicatorLayout: PageIndicatorLayout.COLOR,
                        autoplay: false,
                        itemCount: songs.length,
                        pagination: const SwiperPagination(),
                        control: const SwiperControl(),
                      ),
                    ),
                    Positioned(
                        top: 120,
                        left: 180,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueAccent),
                          child: TextButton(
                            onPressed: () {
                              flag=1;
                              onTap();
                            },
                            child: Icon(
                              Icons.play_circle_filled,
                              color: Colors.white,
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        Positioned(
                            left: 48 * 3, child: MainKey(bkey: "F", a: fkey)),
                        Positioned(
                            left: 48 * 4, child: MainKey(bkey: "G", a: gkey)),
                        Positioned(
                            left: 48 * 5, child: MainKey(bkey: "A", a: akey)),
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
                        Positioned(
                            left: 274, child: HashKey(bkey: "A#", a: a_key)),
                      ],
                    ),
                  ),
                  Container(
                    width: 48 * 7,
                    height: 170,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        MainKey(
                          bkey: "C1",
                          a: c1key,
                        ),
                        Positioned(
                          left: 48,
                          child: MainKey(bkey: "D1", a: d1key),
                        ),
                        Positioned(
                            left: 28,
                            child: HashKey(
                              bkey: "C1#",
                              a: c1_key,
                            )),
                        Positioned(
                            left: 48 + 48,
                            child: MainKey(
                              bkey: "E1",
                              a: e1key,
                            )),
                        Positioned(
                            left: 80,
                            child: HashKey(
                              bkey: "D1#",
                              a: d1_key,
                            )),
                        Positioned(
                            left: 48 * 3, child: MainKey(bkey: "F1", a: f1key)),
                        Positioned(
                            left: 48 * 4, child: MainKey(bkey: "G1", a: g1key)),
                        Positioned(
                            left: 48 * 5, child: MainKey(bkey: "A1", a: a1key)),
                        Positioned(
                            left: 48 * 6,
                            child: MainKey(
                              bkey: "B1",
                              a: b1key,
                            )),
                        Positioned(
                            left: 174,
                            child: HashKey(
                              bkey: "F1#",
                              a: f1_key,
                            )),
                        Positioned(
                            left: 224,
                            child: HashKey(
                              bkey: "G1#",
                              a: g1_key,
                            )),
                        Positioned(
                            left: 274, child: HashKey(bkey: "A1#", a: a1_key)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
