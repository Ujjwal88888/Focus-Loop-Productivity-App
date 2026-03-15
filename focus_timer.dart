import 'package:flutter/material.dart';
import 'dart:async';

class FocusTimer extends StatefulWidget {
  @override
  _FocusTimerState createState() => _FocusTimerState();
}

class _FocusTimerState extends State<FocusTimer> {

  int timeLeft = 25 * 60;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return "$minutes:${remainingSeconds.toString().padLeft(2,'0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Timer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              formatTime(timeLeft),
              style: TextStyle(fontSize: 50),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: startTimer,
              child: Text("Start"),
            )

          ],
        ),
      ),
    );
  }
}
