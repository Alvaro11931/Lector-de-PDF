import 'package:flutter/material.dart';
import 'package:lector_de_pdf_flutter/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
    DocumentoPDF doc; 

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.back_hand,color: Colors .black,),
        title: Text(widget.doc.doc_title!),
      ),
      body: SfPdfViewer.network(widget.doc.doc_url!),
    );
  }
}