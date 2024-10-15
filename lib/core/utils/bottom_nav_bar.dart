import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../features/ai_text_detect/view/pages/ai-text_detect.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<Widget> screens = [
    const PatientHomeScreen(),
    const ChatPatientScreen(),
    const AppointmentsPatientScreen(),
    const AiTextDetect(),
  ];
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      items: <Widget>[
        Icon(Icons.add, size: 30),
        Icon(Icons.list, size: 30),
        Icon(Icons.compare_arrows, size: 30),
      ],
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}
