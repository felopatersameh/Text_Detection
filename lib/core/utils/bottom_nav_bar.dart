import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/colors.dart';

import '../../features/ai_text_detect/view/pages/ai-text_detect.dart';
import '../../features/home/view/pages/home_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<Widget> screens = [
    const HomeScreen(),
    //const meScreen(),
    //const FileScreen(),
    const AiTextDetect(),
  ];
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
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
          _page = index;
        });
      },
    );
  }
}
