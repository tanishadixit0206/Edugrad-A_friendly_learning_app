import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:first_app/pages/questionsch1.dart';
import 'package:first_app/pages/questionsch2.dart';

import 'package:first_app/pages/questionsch3.dart';
import 'package:flutter/widgets.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Question Time"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("Chapter 1"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Questionsch1('assets/QPdf/CHAPTER1QUESTIONS.pdf'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Chapter 2"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Questionsch2('assets/QPdf/CHAPTER2QUESTIONS.pdf'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Chapter 3"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Questionsch3('assets/QPdf/CHAPTER3QUESTIONS.pdf'),
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
