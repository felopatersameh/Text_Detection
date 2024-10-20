import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/features/history/view/pages/history_page.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/generated/assets.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/icons.dart';
import '../../../ai_text_detect/view/pages/ai_text_detect.dart';
import '../../../home/view/pages/home_screen.dart';
import '../../../user/view/pages/account_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
    const HistoryScreen(),
    const AiTextDetect(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.h,
        color: AppColors.blueDark,
        backgroundColor: AppColors.cream,
        buttonBackgroundColor: AppColors.darkBlue,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(
            AppIcons.bottomNavHomeIcon,
            color: Colors.white,
          ),
          Icon(
            AppIcons.bottomNavUserIcon,
            color: Colors.white,
          ),
          Icon(
            AppIcons.bottomNavHistoryIcon,
            color: Colors.white,
          ),
          Image.asset(Assets.pngSearch, height: 30.h, width: 30.w),
          // Icon(
          //   AppIcons.bottomNavDetectionIcon,
          //   color: Colors.white,
          // ),
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
