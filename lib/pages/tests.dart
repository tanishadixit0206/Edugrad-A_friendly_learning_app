import 'package:flutter/material.dart';
import 'package:first_app/pages/testpdf.dart';
import 'package:flutter/widgets.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Testpdf('assets/testpdf.pdf'),
                ),
              );
            },
            child: Text("Open PDF"),
          ),
        ),
      ),
    );
  }
}
