import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lector_de_pdf_flutter/Pages/lector_pdf.dart';
import 'package:lector_de_pdf_flutter/models/document_model.dart';

class HomeScream extends StatefulWidget {
  HomeScream({Key? key}) : super(key: key);

  @override
  State<HomeScream> createState() => _HomeScreamState();
}

class _HomeScreamState extends State<HomeScream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(onPressed: (){},icon: const Icon(Icons.menu),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Documentos Recientes",
                  style: GoogleFonts.roboto(fontSize: 48,fontWeight: FontWeight.bold)
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: DocumentoPDF.doc_list.map((doc) => ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReaderScreen(doc)));
                      },
                      title: Text(
                        doc.doc_title!,
                        style: GoogleFonts.nunito(),
                        overflow: TextOverflow.ellipsis,
                        ),
                      subtitle: Text("${doc.page_num!} Page "),
                      trailing: Text(
                        doc.doc_date!,
                        style: GoogleFonts.nunito(color: Colors.green),),
                      leading: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.red,
                        size: 50),
                    )).toList()
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}