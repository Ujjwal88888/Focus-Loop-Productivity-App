import 'package:flutter/material.dart';
import 'focus_timer.dart';
import 'usage_tracker.dart';

void main() {
  runApp(FocusLoopApp());
}

class FocusLoopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Loop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Loop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              child: Text("Start Focus Timer"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FocusTimer()),
                );
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("View Usage Tracker"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UsageTracker()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
