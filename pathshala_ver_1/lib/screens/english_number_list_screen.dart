// @dart=2.9

import 'package:flutter/material.dart';
import 'package:pathshala_ver_1/constants.dart';

import 'canvas_screen.dart';

class EnglishNumberListScreen extends StatefulWidget {
  static String id = 'english_number_list_screen';
  @override
  _EnglishNumberListScreenState createState() =>
      _EnglishNumberListScreenState();
}

class _EnglishNumberListScreenState extends State<EnglishNumberListScreen> {
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
                    'English Numbers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Oswald',
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
                                      flag_eng_num[0] = '1';
                                    });
                                    canvas_content_var = '0';
                                    canvas_img_var =
                                        'assets/images/english/numbers/0.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/0.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '0',
                                    num: 0,
                                    icon: flag_eng_num[0] == '0'
                                        ? Icons.lock
                                        : Icons.lock_open,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[1] = '1';
                                    });
                                    canvas_content_var = '1';
                                    canvas_img_var =
                                        'assets/images/english/numbers/1.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/1.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '1',
                                    num: 1,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[2] = '1';
                                    });
                                    canvas_content_var = '2';
                                    canvas_img_var =
                                        'assets/images/english/numbers/2.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/2.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '2',
                                    num: 2,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[3] = '1';
                                    });
                                    canvas_content_var = '3';
                                    canvas_img_var =
                                        'assets/images/english/numbers/3.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/3.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '3',
                                    num: 3,
                                    icon: Icons.lock,
                                    color: Color(0XFFFFA509),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[4] = '1';
                                    });
                                    canvas_content_var = '4';
                                    canvas_img_var =
                                        'assets/images/english/numbers/4.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/4.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '4',
                                    num: 4,
                                    icon: Icons.lock,
                                    color: Color(0XFFE30942),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[5] = '1';
                                    });
                                    canvas_content_var = '5';
                                    canvas_img_var =
                                        'assets/images/english/numbers/5.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/5.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '5',
                                    num: 5,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[6] = '1';
                                    });
                                    canvas_content_var = '6';
                                    canvas_img_var =
                                        'assets/images/english/numbers/6.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/6.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '6',
                                    num: 6,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[7] = '1';
                                    });
                                    canvas_content_var = '7';
                                    canvas_img_var =
                                        'assets/images/english/numbers/7.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/7.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '7',
                                    num: 7,
                                    icon: Icons.lock,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[8] = '1';
                                    });
                                    canvas_content_var = '8';
                                    canvas_img_var =
                                        'assets/images/english/numbers/8.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/8.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '8',
                                    num: 8,
                                    icon: Icons.lock,
                                    color: Colors.pink,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_eng_num[9] = '1';
                                    });

                                    canvas_content_var = '9';
                                    canvas_img_var =
                                        'assets/images/english/numbers/9.jpg';
                                    canvas_audio_var =
                                        'assets/audio/english_numbers/9.mp3';

                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: '9',
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
                ),
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
              flag_eng_num[num] == '0' ? Icons.lock : Icons.check,
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
