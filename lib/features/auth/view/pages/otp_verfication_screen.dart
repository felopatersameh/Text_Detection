import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/colors.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cream,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 19,
            height: 19,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: AppColors.cream),
            child: SvgPicture.asset(
              '${AppImages.svgPath}back_arrow.svg',
              height: 12.0,
              width: 12.0,
            ),
          ),
        ),
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }
}
SafeArea _buildBody(BuildContext context) {
  return SafeArea(
    child: Column(
      children:
      [

      ],
    ),
  );

  // CustomScrollView(
  //   slivers: [
  //     FormLogin(),
  //     BuildTextButton(
  //       text1: AppString.haveAnAccount,
  //       text2: AppString.registerNow,
  //       onPressedText2: () {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => RegisterScreen(),
  //             ));
  //       },
  //     )
  //   ],
  // ),
}

