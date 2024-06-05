import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pdfWid;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import 'package:Tex_generton/Pages/Page7.dart';
import 'package:Tex_generton/Pages/page5.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:flutter/Page7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

class Pg6 extends StatefulWidget {
  const Pg6({super.key});

  @override
  State<Pg6> createState() => _Pg6State();
}

Color x = Colors.black;
String z = "";
String c = "";

class _Pg6State extends State<Pg6> {
  String? str;
  void openFiles() async {
    PlatformFile file;
    File f;
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    setState(() {
      if (resultFile != null) {
        file = resultFile.files.first;
        if (file.extension != "pdf") {
          showDialog(
            context: context,
            builder: (context) => SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: const AboutDialog(
                // applicationIcon: AlertDialog.adaptive(),
                applicationName: "Text generion",
                children: [
                  Text(
                    "This file is not supported(it only supports PDF)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          );
        } else {
          f = File(file.path ?? "");
          str = base64Encode(f.readAsBytesSync());


          // z = file.name;
          // print(file.name);
          // print(file.bytes.toString());
          // print(file.extension);
        }
        // x=file.name;
      } else {
        print("object");
      }
    });
  }
  Future<Uint8List> _createPdf(
      PdfPageFormat format,
      String content
      // String content
      ) async {
    final pdf = pdfWid.Document(
      version: PdfVersion.pdf_1_4,
      compress: true,
    );
    var arabicFont = pdfWid.Font.ttf(await rootBundle.load('assets/fonts/TraditionalArabicRegular.ttf'));
    pdf.addPage(
      pdfWid.Page(
        // pageFormat: PdfPageFormat((80 * (72.0 / 25.4)), 600,
        //     marginAll: 5 * (72.0 / 25.4)),
        pageFormat: format,
        theme: pdfWid.ThemeData.withFont(
          base: arabicFont, // Use the Arabic font as the base font
        ),
        build: (context) {
          return pdfWid.SizedBox(

            width: double.infinity,
            child: pdfWid.FittedBox(
                child: pdfWid.Column(
                    mainAxisAlignment: pdfWid.MainAxisAlignment.start,
                    children: [

                      pdfWid.Container(
                        width: 250,
                        height: 1.5,
                        margin: pdfWid.EdgeInsets.symmetric(vertical: 5),
                        color: PdfColors.black,
                      ),
                      pdfWid.Container(
                        width: 300,
                        child: pdfWid.Text("Hala Project",
                            style: pdfWid.TextStyle(
                              fontSize: 35,
                              fontWeight: pdfWid.FontWeight.bold,
                            ),
                            textAlign: pdfWid.TextAlign.center,
                            maxLines: 5),
                      ),
                      pdfWid.Container(
                        width: 250,
                        height: 1.5,
                        margin: pdfWid.EdgeInsets.symmetric(vertical: 10),
                        color: PdfColors.black,
                      ),
                      pdfWid.Text("Translate pdf file",
                          style: pdfWid.TextStyle(
                              fontSize: 25, fontWeight: pdfWid.FontWeight.bold),

                      ),
                      pdfWid.SizedBox(
                        height: 10.0,
                      ),
                      pdfWid.Text("${content}",
                          style: pdfWid.TextStyle(
                            font: arabicFont,
                              fontSize: 25,
                              fontWeight: pdfWid.FontWeight.bold,),
                        textDirection: pdfWid.TextDirection.rtl
                      ),
                    ])),
          );
        },
      ),
    );
    return pdf.save();
  }

  PdfPageFormat format = PdfPageFormat.a4;
  String? content = sharedPref.getString('query');

  Future uploadFile() async {
    try {

      var response = await http.post(
        Uri.parse('http://192.168.137.1:5000/translate'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"pdf_base64": "${str}", "select_Lang": "arabic"}),
      ).timeout(Duration(minutes: 20));

      if (response.statusCode == 200) {
        var responseText = jsonDecode(response.body);
        print('content from responsTexet${responseText}');
        sharedPref.setString("query",responseText.toString());
        print('content from shared preference ${content}');
        // return PdfPreview(build: (format)=>_createPdf(format));
        // final pdf = pdfWid.Document();
        //
        // pdf.addPage(
        //   pdfWid.Page(
        //     build: (pdfWid.Context context) => pdfWid.Center(
        //       child: pdfWid.Text('$responseText'),
        //     ),
        //   ),
        // );
        // final file = File('example.pdf');
        //
        // await file.writeAsBytes(await pdf.save());
        // final output = await getTemporaryDirectory();
        // final file1 = File('${output.path}/example.pdf');
        // print('here is the file ${output}');
        //
        // print("Translated PDF in base64: ${responseText['pdf_base64']}");
      } else {
        print("Failed to translate PDF. Status code: ${response.statusCode}");
      }
    } on FormatException catch (e) {
      print("Error during file upload: FormatException: ${e.message}");
    } on HttpException catch (e) {
      print("Error during file upload: HttpException: ${e.message}");
    } catch (e) {
      print("Error during file upload: $e");
    }
  }


  // Future<void> a() async {
  //   final pdf = pw.Document();
  //
  //   pdf.addPage(
  //     pw.Page(
  //       build: (pw.Context context) => pw.Center(
  //         child: pw.Text('Hello World!'),
  //       ),
  //     ),
  //   );
  //
  //   final file = File('example.pdf');
  //   await file.writeAsBytes(await pdf.save());
  // }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Page6()));
                },
                icon: Icon(
                  Icons.keyboard_backspace,
                  color: Color(0xFFB03CFC),
                  size: 30,
                )),
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text(
                    "Ahmed",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6, top: 1),
                  child: (Text(
                    "Online now",
                    style: TextStyle(
                        color: Color.fromRGBO(204, 204, 204, 5), fontSize: 16),
                  )),
                )
              ],
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(42, 39, 48, 266),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Color(0xFFB03CFC),
                    size: 30,
                  ))
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // padding: EdgeInsets.all(50),
                height: 113,
                width: 382.21,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                    // color:  Color.fromRGBO(204, 204, 204, 5)

                    ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                            colors: [
                              Color(0xFF1F1F1F),
                              Color(0xFF696969),
                            ],
                          ),
                        ),
                        transform: Matrix4.translationValues(0, 10, 0),
                        width: 40,
                        height: 41,
                        child: Icon(
                          CupertinoIcons.wind_snow,
                          color: Color(0xFFB03CFC),
                          size: 35,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Text(
                    "What do you want to translate?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // padding: EdgeInsets.all(50),
                    height: 113,
                    width: 382.21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                        // color:  Color.fromRGBO(204, 204, 204, 5)

                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Filename: ${z}",
                            style: TextStyle(fontSize: 17.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: 40,
                                  height: 40,
                                  // color: Color(0xFF696962),
                                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
                                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
                                  child: IconButton(
                                    onPressed: () {
                                      openFiles();
                                    },
                                    icon:
                                        Icon(CupertinoIcons.arrow_up_doc_fill),
                                    color: Color(0xFFB03CFC),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Text(
                    "Language",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // padding: EdgeInsets.all(50),
                    height: 51,
                    width: 382.21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(84, 84, 84, 1), width: 2)
                        // color:  Color.fromRGBO(204, 204, 204, 5)

                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Arabic",
                            style: TextStyle(fontSize: 17.5),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        //     children: [
                        //
                        //     ],),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Spacer(),
            SizedBox(
              height: 219,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFFB03CFC),
                onPressed: () async{

                  await uploadFile();

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Generate",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(CupertinoIcons.arrow_right)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFFB03CFC),
                onPressed: () async{
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => Page7()));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PdfPreview(build:
                      (format)=>_createPdf(format,content!))));
                  // await uploadFile();
                  // PdfPreview(build: (format)=>_createPdf(format));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Save pdf",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(CupertinoIcons.arrow_right)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
