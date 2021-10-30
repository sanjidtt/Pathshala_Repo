// @dart=2.9

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tflite/tflite.dart';

import '../constants.dart';

class CanvasScreen extends StatefulWidget {
  static String id = 'canvas_screen';
  @override
  _CanvasScreenState createState() => _CanvasScreenState();
}

class _CanvasScreenState extends State<CanvasScreen> {
  List<Offset> points = List<Offset>();
  final paintMode = ui.PointMode.points;
  int digit = -1;
  int flag = 0;
  int flag_2 = 0;
  ByteData imgBytes;
  File imageFile;

  int flag_anim = 1;

  File _image;
  double _imageWidth;
  double _imageHeight;
  var _recognitions;

  String var_prediction = ' ';

  var temp_pic;
  var temp_img;
  var pngBytes;
  var picture;

  ///
  ///_______TFLite_Models__________
  ///

  loadModel_BanglaNumber() async {
    Tflite.close();
    try {
      String res;
      res = await Tflite.loadModel(
        model: canvas_model_var,
        labels: canvas_label_var,
      );

      print(res);

      print('Model loaded successfully');
    } on PlatformException {
      print("Failed to load the model");
    }
  }

  Future predict_BanglaNumber(File image) async {
    print('Entered______predict_BanglaNumber______');
    var recognitions = await Tflite.runModelOnImage(
      path: image.path, // required
      imageMean: 0.0, // defaults to 117.0
      imageStd: 255.0, // defaults to 1.0
      numResults: 4, // defaults to 5
      threshold: 0.0, // defaults to 0.1
      asynch: true, // defaults to true
    );

    print('HELLO___111111111111111');

    print(recognitions);

    setState(() {
      print('HELLO___2222222222222222222222222222222');
      _recognitions = recognitions;
      print(_recognitions[0]['label'].toString().toUpperCase());
      var_prediction = _recognitions[0]['label'].toString();
      //print(_recognitions[5]['label'].toString().toUpperCase());
      //print(_recognitions[2]['label'].toString().toUpperCase());
      print('HELLO___3333333333333333333333333333333');

      var_prediction == canvas_content_var ? playHappyAudio() : playSadAudio();

      if (var_prediction == canvas_content_var) {
        flag_anim = 1;
      } else {
        flag_anim = 0;
      }
    });
  }

  sendImage_BanglaNumber(File image) async {
    print('Entered______sendImage_BanglaNumber______');
    if (image == null) {
      print('_________Image is NULL____________');
      return;
    }

    print('Calling______predict_BanglaNumber______');
    await predict_BanglaNumber(image);

    // get the width and height of selected image
    FileImage(image)
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
          setState(() {
            _imageWidth = info.image.width.toDouble();
            _imageHeight = info.image.height.toDouble();
            _image = image;
          });
        })));
  }

  Future playStartAudio() async {
    final player = AudioPlayer();
    var duration = await player.setAsset(canvas_audio_var);
    //await player.setVolume(1);
    await player.play();
  }

  Future playHappyAudio() async {
    final player = AudioPlayer();
    var duration =
        await player.setAsset('assets/audio/sound_effect/happy_trim.mp3');
    //await player.setVolume(1);
    await player.play();
  }

  Future playSadAudio() async {
    final player = AudioPlayer();
    var duration =
        await player.setAsset('assets/audio/sound_effect/sad_trim.mp3');
    //await player.setVolume(1);
    await player.play();
  }

  @override
  void initState() {
    super.initState();

    loadModel_BanglaNumber().then((val) {
      setState(() {});
    });

    playStartAudio();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFDFF4FF),
        body: Column(
          children: [
            Expanded(
              flex: 155,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 50,
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: CircleAvatar(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 200,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 50,
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            points.clear();
                            digit = -1;
                          });
                        },
                        child: CircleAvatar(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 285,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 300,
                    child: Container(
                      height: MediaQuery.of(context).size.height * (285 / 600),
                      width: MediaQuery.of(context).size.width * (300 / 340),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(canvas_img_var),
                        ),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: GestureDetector(
                        onPanUpdate: (DragUpdateDetails details) {
                          Offset _localPosition = details.localPosition;
                          if (_localPosition.dx >= 0 &&
                              _localPosition.dx <=
                                  MediaQuery.of(context).size.height *
                                      (285 / 600) &&
                              _localPosition.dy >= 0 &&
                              _localPosition.dy <=
                                  MediaQuery.of(context).size.width *
                                      (300 / 340)) {
                            setState(() {
                              points.add(_localPosition);
                            });
                          }
                        },
                        onPanEnd: (DragEndDetails details) async {
                          points.add(null);

                          ///Classify Here
                          digit = -1;
                          setState(() {});
                        },
                        child: CustomPaint(
                          painter: Painter(points: points),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
//            Expanded(
//              flex: 40,
//              child: SizedBox(),
//            ),
            Expanded(
              flex: 65,
              child: GestureDetector(
                onTap: () async {
                  setState(() async {
                    picture = toPicture(points);
                    await generateImage();
                    await imageToFile(imgBytes);
                    sendImage_BanglaNumber(imageFile);
//                    var_prediction == canvas_content_var
//                        ? playHappyAudio()
//                        : playSadAudio();
                    Future.delayed(Duration(seconds: 2), () {
                      print(" This line is execute after 5 seconds");
                    });

                    ///Animation
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    (80 / 100),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: FlareActor(
                                        'assets/flare/Teddy_2.flr',
                                        //alignment: Alignment.center,
                                        //fit: BoxFit.contain,
                                        animation:
                                            flag_anim == 1 ? 'success' : 'fail',
                                        isPaused: false,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: flag_anim == 1
                                          ? Text(
                                              'Great job',
                                              style: TextStyle(
                                                  fontFamily: 'Pacifico',
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              'Try Again',
                                              style: TextStyle(
                                                  fontFamily: 'Pacifico',
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  });
                },
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * (45 / 600),
                    width: MediaQuery.of(context).size.width * (140 / 340),
                    decoration: BoxDecoration(
                      color: Color(0XFF6999BC),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'CHECK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 55,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * (55 / 600),
                  width: MediaQuery.of(context).size.width * (340 / 340),
                  decoration: BoxDecoration(
                    color: Color(0XFFD8C9B0),
                  ),
                  child: Center(
                    child: Text(
                      var_prediction == canvas_content_var ? 'CORRECT' : 'DRAW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///_______Functions________
  ///

  ui.Picture toPicture(List<Offset> points) {
    final _whitePaint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.white
      ..strokeWidth = 14.0;

    final _bgPaint = Paint()..color = Colors.black;
    final _canvasCullRect = Rect.fromPoints(
        Offset(0, 0),
        Offset(MediaQuery.of(context).size.height * (285 / 600),
            MediaQuery.of(context).size.width * (300 / 340)));
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder, _canvasCullRect)..scale(1);

    canvas.drawRect(
        Rect.fromLTWH(0, 0, MediaQuery.of(context).size.width * (300 / 340),
            MediaQuery.of(context).size.height * (285 / 600)),
        _bgPaint);

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], _whitePaint);
      }
    }

    return recorder.endRecording();
  }

  void generateImage() async {
    //final picture = toPicture(temp_points);
    print('Entered generateImage');
    final img = await picture.toImage(
        (MediaQuery.of(context).size.width * (300 / 340)).toInt(),
        (MediaQuery.of(context).size.height * (285 / 600)).toInt());
    print('Wooooooooohhhhhoooooooooooooo11111111111');
    print(img.runtimeType);
    print('Wooooooooohhhhhoooooooooooooo22222222222');
    final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);

    setState(() {
      imgBytes = pngBytes;
    });

    print('Exited generateImage');
  }

  void imageToFile(ByteData var_img) async {
    print('Entered imageToFile');
    String tempPath = (await getTemporaryDirectory()).path;
    File tempFile = File('$tempPath/profile.png');
    await tempFile.writeAsBytes(var_img.buffer
        .asUint8List(var_img.offsetInBytes, var_img.lengthInBytes));
    setState(() {
      imageFile = tempFile;
    });

    print('Exited imageToFile');
  }
}

///_______Class________
///

class Painter extends CustomPainter {
  final List<Offset> points;
  Painter({this.points});

  final Paint _paintDetails = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4.0
    ..color = Colors.black;

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], _paintDetails);
      }
    }
  }

  @override
  bool shouldRepaint(Painter oldDelegate) {
    return true;
  }
}
