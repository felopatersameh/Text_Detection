import 'package:flutter/material.dart';

import '../widgets/scanned_file.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Screen"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.restore_from_trash_rounded,
                color: Colors.red, size: 40),
          ),
        ],
      ),
      body: SafeArea(
        child: ScannedFile(),
      ),
    );
  }
}
