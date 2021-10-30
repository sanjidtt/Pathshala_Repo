// @dart=2.9

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tflite/tflite.dart';

class CanvasScreenTrial2 extends StatefulWidget {
  static String id = 'canvas_screen_trial_2';

  @override
  _CanvasScreenTrial2State createState() => _CanvasScreenTrial2State();
}

class _CanvasScreenTrial2State extends State<CanvasScreenTrial2> {
  List<Offset> points = List<Offset>();
  final paintMode = ui.PointMode.points;
  int digit = -1;
  int flag = 0;
  int flag_2 = 0;
  ByteData imgBytes;
  File imageFile;

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
        model: "assets/capital_ekush.tflite",
        labels: "assets/capital_ekush.txt",
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

  @override
  void initState() {
    super.initState();

    loadModel_BanglaNumber().then((val) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFDFF4FF),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.close),
          onPressed: () {
            setState(() {
              points.clear();
              digit = -1;
            });
          },
        ),
        body: Column(
          children: [
            Expanded(
              flex: 300,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 300,
                    child: Container(
                      height: MediaQuery.of(context).size.height * (285 / 600),
                      width: MediaQuery.of(context).size.width * (300 / 340),
                      decoration: BoxDecoration(
                        color: Colors.white,
//                      image: DecorationImage(
//                        image:
//                            ExactAssetImage('assets/images/Canvas_trial.jpg'),
//                      ),
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
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 100,
              child: Row(
                children: [
                  RaisedButton(
                    child: Text('Fetch Image'),
                    onPressed: () {
                      print('Button_Fetch_Image_Entered');
                      picture = toPicture(points);
                      print('Button_Fetch_Image_Exited');
                    },
                  ),
                  RaisedButton(
                    child: Text('Gen Image'),
                    onPressed: () async {
                      print('Button_Gen_Image_Entered');

                      await generateImage();

                      print('Image Below generated');

                      digit = 1;

                      await imageToFile(imgBytes);

                      print('Image Converted to File type data');

                      print(imageFile.runtimeType);

                      sendImage_BanglaNumber(imageFile);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      var_prediction,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        //fontFamily: 'Galada',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 300,
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 300,
                    child: imgBytes == null
                        ? Container(
                            color: Colors.blue,
                          )
                        : Container(
                            child: Image.memory(
                              Uint8List.view(imgBytes.buffer),
                              width: 300,
                              height: 300,
                            ),
                            //color: Colors.redAccent,
                          ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Placeholder(),
                  ),
                ],
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
