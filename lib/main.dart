import 'package:flutter/material.dart';
import 'app_brain.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';

AppBrain appBrain = AppBrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Padding> answerResult = [];

  int choice = 0;
  int correctAnswer = 0;

  void brain(int choice) {
    int correctAnswer = appBrain.getqueastionAnswer();
    setState(() {
      if (correctAnswer == choice) {
        answerResult.add(const Padding(
          padding: EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_up,
            color: Colors.green,
            size: 20.0,
          ),
        ));
      } else {
        answerResult.add(const Padding(
          padding: EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_down,
            color: Colors.red,
            size: 20.0,
          ),
        ));
      }
      if (appBrain.isFinished() == true) {
        final clickedButton = FlutterPlatformAlert.showAlert(
          windowTitle: 'نهاية الاسئلة',
          text: 'يمكنك البدء من جديد',
          alertStyle: AlertButtonStyle.yesNoCancel,
          iconStyle: IconStyle.information,
        );
        answerResult = [];
      }
      appBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'اختبار',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: answerResult,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF39624),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Expanded(
                        child: Image.asset(appBrain.getquestionImages()))),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        appBrain.getquestionText(),
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[300],
                onPrimary: Colors.white,
                elevation: 20,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  brain(2);
                  appBrain.nextQuestion();
                });
              },
              child: Text(
                appBrain.getAnswer1(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ), //choice1
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[300],
                onPrimary: Colors.white,
                elevation: 20,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  brain(3);
                  appBrain.nextQuestion();
                });
              },
              child: Text(
                appBrain.getAnswer2(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ), //choice2
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[300],
                onPrimary: Colors.white,
                elevation: 20,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  brain(4);
                  appBrain.nextQuestion();
                });
              },
              child: Text(
                appBrain.getAnswer3(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ), //choice3
          ],
        ),
      ),
    );
  }
}
