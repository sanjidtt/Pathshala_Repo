// @dart=2.9

import 'package:flutter/material.dart';
import 'package:pathshala_ver_1/constants.dart';

import 'canvas_screen.dart';

class BanglaNumberListScreen extends StatefulWidget {
  static String id = 'bangla_number_list_screen';
  @override
  _BanglaNumberListScreenState createState() => _BanglaNumberListScreenState();
}

class _BanglaNumberListScreenState extends State<BanglaNumberListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 165,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0XFF2626FF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(0.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'সংখ্যা',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Galada',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 400,
              child: Container(
                color: Color(0XFFDFF4FF),
                child: Row(
                  children: [
                    Expanded(
                      flex: 20,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 220,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 30,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 340,
                            child: ListView(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[0] = '1';
                                    });
                                    canvas_content_var = '0';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/0.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/0.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '০',
                                    num: 0,
                                    icon: flag_bang_num[0] == '0'
                                        ? Icons.lock
                                        : Icons.lock_open,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[1] = '1';
                                    });
                                    canvas_content_var = '1';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/1.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/1.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '১',
                                    num: 1,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[2] = '1';
                                    });
                                    canvas_content_var = '2';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/2.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/2.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '২',
                                    num: 2,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[3] = '1';
                                    });
                                    canvas_content_var = '3';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/3.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/3.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৩',
                                    num: 3,
                                    icon: Icons.lock,
                                    color: Color(0XFFFFA509),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[4] = '1';
                                    });
                                    canvas_content_var = '4';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/4.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/4.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৪',
                                    num: 4,
                                    icon: Icons.lock,
                                    color: Color(0XFFE30942),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[5] = '1';
                                    });
                                    canvas_content_var = '5';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/5.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/5.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৫',
                                    num: 5,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[6] = '1';
                                    });
                                    canvas_content_var = '6';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/6.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/6.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৬',
                                    num: 6,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[7] = '1';
                                    });
                                    canvas_content_var = '7';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/7.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/7.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৭',
                                    num: 7,
                                    icon: Icons.lock,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[8] = '1';
                                    });
                                    canvas_content_var = '8';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/8.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/8.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৮',
                                    num: 8,
                                    icon: Icons.lock,
                                    color: Colors.pink,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_num[9] = '1';
                                    });

                                    canvas_content_var = '9';
                                    canvas_img_var =
                                        'assets/images/Bangla/numbers/9.png';
                                    canvas_audio_var =
                                        'assets/audio/bangla_numbers/9.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '৯',
                                    num: 9,
                                    icon: Icons.lock,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 20,
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabList extends StatelessWidget {
  TabList({this.color, this.content, this.icon, this.num});

  final Color color;
  final IconData icon;
  final String content;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (50 / 565),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 20,
            child: SizedBox(),
          ),
          Expanded(
            flex: 40,
            child: Center(
              child: Text(
                content,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    fontFamily: 'Galada'),
              ),
            ),
          ),
          Expanded(
            flex: 100,
            child: SizedBox(),
          ),
          Expanded(
            flex: 40,
            child: Icon(
              flag_bang_num[num] == '0' ? Icons.lock : Icons.check,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 20,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
