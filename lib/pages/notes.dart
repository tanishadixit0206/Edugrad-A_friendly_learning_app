import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:first_app/pages/notesch1.dart';
import 'package:first_app/pages/notesch2.dart';
import 'package:first_app/pages/notesch3.dart';
import 'package:flutter/widgets.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notes"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("Chapter 1"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Notesch1('assets/NotesPdf/CHAPTER1.pdf'),
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
                        Notesch2('assets/NotesPdf/CHAPTER2.pdf'),
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
                        Notesch3('assets/NotesPdf/CHAPTER3.pdf'),
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
