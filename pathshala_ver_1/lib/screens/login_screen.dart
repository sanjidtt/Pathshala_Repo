import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String animationType = 'success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0XFFDFF4FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 30,
              child: SizedBox(),
            ),
            Expanded(
              flex: 200,
              child: Center(
                child: Container(
                  //height: MediaQuery.of(context).size.height * (190 / 490),
                  //width: MediaQuery.of(context).size.width * (160 / 225),
                  height: 250,
                  width: 250,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: FlareActor(
                        'assets/flare/teddy_test.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        //shouldClip: true,
                        animation: animationType,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 63,
              child: Text(
                'পাঠশালা',
                style: TextStyle(
                  fontFamily: 'Galada',
                  fontSize: 48,
                  color: Colors.blue.shade900,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Expanded(
              flex: 33,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 193,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          contentPadding: EdgeInsets.all(10),
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
              flex: 33,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 193,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(10),
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
              flex: 14,
              child: SizedBox(),
            ),
            Expanded(
              flex: 14,
              child: Row(
                children: [
                  Expanded(
                    flex: 134,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 75,
                    child: Container(
                      child: Text('Forgot Password'),
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
              flex: 16,
              child: SizedBox(),
            ),
            Expanded(
              flex: 33,
              child: Row(
                children: [
                  Expanded(
                    flex: 16,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 193,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, DashboardScreen.id);
                        print('Sign in');
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * (33 / 490),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color(0XFFF09F40),
                        ),
                        child: Center(
                          child: Text(
                            'GO',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                          ),
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
              flex: 42,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
