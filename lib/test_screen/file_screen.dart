import 'package:flutter/material.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Screen'),
      ),
      body: Center(
        child: Text('Welcome to the File Screen!'),
      ),
    );
  }
}
