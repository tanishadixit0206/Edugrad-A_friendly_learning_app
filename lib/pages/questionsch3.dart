import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/widgets.dart';

class Questionsch3 extends StatelessWidget {
  final String pdfPath;

  Questionsch3(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Viewer"),
      ),
      body: PDFView(
        filePath: pdfPath,
      ),
    );
  }
}
