// @dart=2.9

import 'package:flutter/material.dart';
import 'package:pathshala_ver_1/constants.dart';

import 'canvas_screen.dart';

class BanglaConsonentListScreen extends StatefulWidget {
  static String id = 'bangla_consonent_list_screen';
  @override
  _BanglaConsonentListScreenState createState() =>
      _BanglaConsonentListScreenState();
}

class _BanglaConsonentListScreenState extends State<BanglaConsonentListScreen> {
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
                    'স্বরবর্ণ',
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
                                      flag_bang_vowel[0] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/1-Aw.mp3';
                                    canvas_content_var = 'Aw';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/0.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'অ',
                                    num: 0,
                                    icon: flag_bang_vowel[0] == '0'
                                        ? Icons.lock
                                        : Icons.lock_open,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[1] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/2-Aa.mp3';
                                    canvas_content_var = 'Aa';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/1.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'আ',
                                    num: 1,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[2] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/3-e.mp3';
                                    canvas_content_var = 'e';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/2.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ই',
                                    num: 2,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[3] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/4-Ee.mp3';
                                    canvas_content_var = 'E';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/3.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ঈ',
                                    num: 3,
                                    icon: Icons.lock,
                                    color: Color(0XFFFFA509),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[4] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/5-u.mp3';
                                    canvas_content_var = 'u';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/4.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'উ',
                                    num: 4,
                                    icon: Icons.lock,
                                    color: Color(0XFFE30942),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[5] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/6-Uu.mp3';
                                    canvas_content_var = 'U';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/5.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ঊ',
                                    num: 5,
                                    icon: Icons.lock,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[6] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/7-wri.mp3';
                                    canvas_content_var = 'wry';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/6.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ঋ',
                                    num: 6,
                                    icon: Icons.lock,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[7] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/8-a.mp3';
                                    canvas_content_var = 'A';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/7.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'এ',
                                    num: 7,
                                    icon: Icons.lock,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[8] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/9-oi.mp3';
                                    canvas_content_var = 'Oi';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/8.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ঐ',
                                    num: 8,
                                    icon: Icons.lock,
                                    color: Colors.pink,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[9] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/10-o.mp3';

                                    canvas_content_var = 'O';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/9.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ও',
                                    num: 9,
                                    icon: Icons.lock,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      flag_bang_vowel[10] = '1';
                                    });
                                    canvas_audio_var =
                                        'assets/audio/bangla_vowel/11-ou.mp3';
                                    canvas_content_var = 'Ou';
                                    canvas_img_var =
                                        'assets/images/Bangla/vowels/10.png';
                                    canvas_model_var =
                                        'assets/vowel_ekush_lekha.tflite';
                                    canvas_label_var =
                                        'assets/vowel_ekush_lekha.txt';
                                    Navigator.pushNamed(
                                        context, CanvasScreen.id);
                                  },
                                  child: TabList(
                                    content: 'ঔ',
                                    num: 10,
                                    icon: Icons.lock,
                                    color: Colors.red,
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
                  fontWeight: FontWeight.w100,
                  fontSize: 28,
                  fontFamily: 'Galada',
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
              flag_bang_vowel[num] == '0' ? Icons.lock : Icons.check,
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
