import 'package:first_app/pages/notes.dart';
import 'package:first_app/pages/questions.dart';
import 'package:first_app/pages/tests.dart';
import 'package:flutter/material.dart';
import 'pages/lectures.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/widgets.dart';

//void main() {
//runApp(MaterialApp(
//home: MyApp(),
//));
//}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edugrad - Your Friendly Learning App"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LecturePage(),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("Lectures"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionPage(),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("Questions"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestPage(),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("Tests"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotesPage(),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("Notes"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
