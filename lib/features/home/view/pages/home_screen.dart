import 'package:flutter/material.dart';

// import 'package:flutter_svg/svg.dart';
// import 'package:textdetection/core/constant/colors.dart';
// import 'package:textdetection/generated/assets.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeBody(),
      ),
      // floatingActionButton: FloatingActionButton(
      //  backgroundColor: AppColors.darkBlue,
      //   onPressed: () {},
      //   child: GestureDetector(
      //     onTap: () {},
      //     child: SvgPicture.asset(Assets.svgCamera),
      //   ),
      // ),
    );
  }
}
