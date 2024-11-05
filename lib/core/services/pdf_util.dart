import 'dart:io';import 'package:flutter/services.dart';import 'package:open_file/open_file.dart';import 'package:pdf/pdf.dart';import 'package:pdf/widgets.dart'; // Import without aliasimport '../../generated/assets.dart';class PdfUtil {  static Future<void> createPdf({required String text, required File fileSelected}) async {    String fileName = (fileSelected.path.split('/').last).split('.').first;    Directory downloadsDirectory = Directory('/storage/emulated/0/Download/textDetection');    // Create directory if it doesn't exist    if (!await downloadsDirectory.exists()) {      await downloadsDirectory.create(recursive: true);    }    // Define the PDF file path    File pdfFile = File('${downloadsDirectory.path}/$fileName.pdf');    // Load font and image assets    final fontData = await rootBundle.load("assets/Fonts/Roboto-Regular.ttf");    final font = Font.ttf(fontData);    final imageData = await rootBundle.load(Assets.pngDetectiveLogo);    final image = MemoryImage(imageData.buffer.asUint8List());    // Create and add content to the PDF document    final pdf = Document();    pdf.addPage(      MultiPage(        pageTheme: PageTheme(          pageFormat: PdfPageFormat.a4,          theme: ThemeData.withFont(base: font),          buildBackground: (context) => FullPage(            ignoreMargins: true,            child: Container(              margin: EdgeInsets.all(5),              color: PdfColor.fromInt(0xFFF5EDE2),            ),          ),        ),        header: (context) => _buildHeader(image),        build: (context) => [          Paragraph(            text: text,            style: TextStyle(font: font, fontSize: 15),            textAlign: TextAlign.justify,          ),        ],      ),    );    // Save and open the PDF file    await pdfFile.writeAsBytes(await pdf.save());    await OpenFile.open(pdfFile.path);  }  // Helper to build the header with image and divider  static Widget _buildHeader(MemoryImage image) {    return Column(      crossAxisAlignment: CrossAxisAlignment.end,      children: [        Container(          decoration: BoxDecoration(            border: Border.all(width: 1, style: BorderStyle.dashed),          ),          child: Image(image, width: 100, height: 100),        ),        Divider(),      ],    );  }}