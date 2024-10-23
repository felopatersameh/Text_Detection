// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:textdetection/core/constant/colors.dart';
// import 'package:textdetection/core/constant/icons.dart';
// import '../../../ai_text_detect/view/pages/ai_text_detect.dart';
// import '../../../home/view/pages/home_screen.dart';
//
// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({super.key});
//
//   @override
//   State<CustomNavBar> createState() => _CustomNavBarState();
// }
//
// class _CustomNavBarState extends State<CustomNavBar> {
//   // List<Widget> screens = [
//   //   const HomeScreen(),
//   //   //const meScreen(),
//   //   //const FileScreen(),
//   //   const AiTextDetect(),
//   // ];
//   int _page = 0;
//   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       height: 60.h,
//       color: AppColors.blueDark,
//       backgroundColor: AppColors.cream,
//       buttonBackgroundColor: AppColors.darkBlue,
//       key: _bottomNavigationKey,
//       items: <Widget>[
//         Icon(
//           AppIcons.bottomNavHomeIcon,
//           color: Colors.white,
//         ),
//         Icon(
//           AppIcons.bottomNavUserIcon,
//           color: Colors.white,
//         ),
//         Icon(
//           AppIcons.bottomNavHistoryIcon,
//           color: Colors.white,
//         ),
//         Icon(
//           AppIcons.bottomNavDetectionIcon,
//           color: Colors.white,
//         ),
//         // SizedBox(
//         //   width: 30.w,
//         //   height: 30.h,
//         //   child: Image.asset(
//         //     Assets.pngSearch,
//         //   ),
//         // ),
//       ],
//       onTap: (index) {
//         setState(() {
//           _page = index;
//         });
//       },
//     );
//   }
// }
