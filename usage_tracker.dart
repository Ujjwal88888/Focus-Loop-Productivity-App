import 'package:flutter/material.dart';

class UsageTracker extends StatelessWidget {

  final List apps = [
    {"name": "Instagram", "time": "2h 10m"},
    {"name": "YouTube", "time": "1h 45m"},
    {"name": "Facebook", "time": "50m"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usage Tracker"),
      ),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {

          return ListTile(
            leading: Icon(Icons.phone_android),
            title: Text(apps[index]["name"]),
            trailing: Text(apps[index]["time"]),
          );

        },
      ),
    );
  }
}
