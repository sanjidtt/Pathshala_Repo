// @dart=2.9

import 'package:flutter/material.dart';

import '../constants.dart';
import 'bangla_number_list_screen.dart';
import 'bangla_vowel_list_screeen.dart';
import 'canvas_screen_trial_2.dart';
import 'english_number_list_screen.dart';

class DashboardScreen extends StatefulWidget {
  static String id = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFDFF4FF),
        body: Column(
          children: [
            Expanded(
              flex: 25,
              child: SizedBox(),
            ),
            Expanded(
              flex: 35,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 35,
                    child: CircleAvatar(
                      radius: 22,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile_avatar_1.png',
                          fit: BoxFit.fitHeight,
                          width: 45,
                          height: 45,
                          //fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 88,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 35,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black,
                      //foregroundColor: Colors.redAccent,
                      child: ClipOval(
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: SizedBox(),
            ),
            Expanded(
              flex: 20,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 25,
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 149,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            Expanded(
              flex: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 70,
                    child: Text(
                      'Tausif',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 104,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: SizedBox(),
            ),
            Expanded(
              flex: 290,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * (100 / 465),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {
                            canvas_model_var = 'assets/English_Number.tflite';
                            canvas_label_var =
                                'assets/English_Number_Label.txt';
                            Navigator.pushNamed(
                                context, EnglishNumberListScreen.id);
                          },
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * (73 / 190),
                            child: Tab(
                              title: 'English Numbers',
                              imgName: 'assets/images/numbers.png',
                              fontFamily: 'Oswald',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (12 / 190),
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, CanvasScreenTrial2.id);
                          },
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * (73 / 190),
                            child: Tab(
                              title: 'English Alphabets',
                              imgName: 'assets/images/alphabet.png',
                              fontFamily: 'Oswald',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (10 / 465),
                    child: SizedBox(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (100 / 465),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: GestureDetector(
                            onTap: () {
                              canvas_model_var = 'assets/Bangla_Number.tflite';
                              canvas_label_var =
                                  'assets/Bangla_Number_Label.txt';
                              Navigator.pushNamed(
                                  context, BanglaNumberListScreen.id);
                            },
                            child: Tab(
                              title: 'সংখ্যা',
                              imgName: 'assets/images/Bangla_Number.png',
                              fontFamily: 'Galada',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (12 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: GestureDetector(
                            onTap: () {
                              canvas_model_var =
                                  'assets/vowel_ekush_lekha.tflite';
                              canvas_label_var = 'assets/vowel_ekush_lekha.txt';
                              Navigator.pushNamed(
                                  context, BanglaVowelListScreen.id);
                            },
                            child: Tab(
                              title: 'স্বরবর্ণ',
                              imgName: 'assets/images/Bangla_vowel.png',
                              fontFamily: 'Galada',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (10 / 465),
                    child: SizedBox(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (100 / 465),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: Tab(
                            title: 'ব্যঞ্জনবর্ণ',
                            imgName: 'assets/images/Bangla_consonent.png',
                            fontFamily: 'Galada',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (12 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: Tab(
                            title: 'Rhymes',
                            imgName: 'assets/images/book.png',
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (10 / 465),
                    child: SizedBox(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (100 / 465),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: Tab(
                            title: 'Assignment',
                            imgName: 'assets/images/assignment.png',
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (12 / 190),
                          child: SizedBox(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (73 / 190),
                          child: Tab(
                            title: 'Feedback',
                            imgName: 'assets/images/message.png',
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (16 / 190),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * (10 / 465),
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 25,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class Tab extends StatelessWidget {
  Tab({this.imgName, this.title, this.fontFamily});

  final String imgName;
  final String title;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 1.8,
            //spreadRadius: 3.0,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 12,
            child: SizedBox(),
          ),
          Expanded(
            flex: 49,
            child: Column(
              children: [
                Expanded(
                  flex: 15,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 40,
                  child: Image.asset(
                    imgName,
                    //width: 400,
                    //height: 400,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 20,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
