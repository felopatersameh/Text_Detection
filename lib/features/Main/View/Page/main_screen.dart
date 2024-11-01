import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:textdetection/features/history/view/pages/history_page.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const AccountScreen(),
    const HistoryScreen(),
    const AiTextDetect(),
  ];

  @override
  Widget build(BuildContext context) {
    double navBarHeight = 55.0;
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        letIndexChange: (index) => true,
        height: navBarHeight,
        color: AppColors.blueDark,
        backgroundColor: AppColors.cream,
        buttonBackgroundColor: AppColors.darkBlue,
        animationDuration: Duration(milliseconds: 300),
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(
            AppIcons.bottomNavHomeIcon,
            size: 24.sp.clamp(20, 30),
            color: Colors.white,
          ),
          Icon(
            AppIcons.bottomNavUserIcon,
            size: 24.sp.clamp(20, 30),
            color: Colors.white,
          ),
          Icon(
            AppIcons.bottomNavHistoryIcon,
            size: 24.sp.clamp(20, 30),
            color: Colors.white,
          ),
          // Image.asset(Assets.pngSearch, height: 30.h, width: 30.w),
          Icon(
            AppIcons.bottomNavDetectionIcon,
            size: 24.sp.clamp(20, 30),
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
