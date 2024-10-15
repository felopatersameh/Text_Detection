import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:textdetection/test_screen/file_screen.dart';
import 'package:textdetection/test_screen/me_screen.dart';

import 'core/constant/assets.dart';
import 'core/constant/colors.dart';
import 'features/ai_text_detect/view/pages/ai-text_detect.dart';
import 'features/home/view/pages/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int   currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const MeScreen(),
    const FileScreen(),
    const AiTextDetect(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: AppColors.blueDark,
        backgroundColor: AppColors.cream,
        buttonBackgroundColor: AppColors.drakBlue,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(IconlyLight.home, color: Colors.white,),
          Icon(IconlyLight.profile, color: Colors.white,),
          Icon(IconlyBold.folder,color: Colors.white,),
          SizedBox(
            width: 30,
            height: 30,
            child: Image.asset(
              AppAssets.search,
            ),
          )

        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

