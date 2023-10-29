import 'package:flutter/material.dart';
import 'package:first_app/pages/lecturesch1.dart';
import 'package:first_app/pages/lecturesch2.dart';
import 'package:first_app/pages/lecturesch3.dart';

class LecturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lectures"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("Chapter 1"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lecturech1Page(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Chapter 2"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lecturech2Page(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Chapter 3"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lecturech3Page(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
