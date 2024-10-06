import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/constant/app_images.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_login_with_container.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/custom_or_login_register_widget.dart';
import '../widgets/form_register.dart';
import 'login_screen.dart';

late double screenWidth;
late double textScaleFactor;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        FormRegister(),
        const SizedBox(
          height: 32.0,
        ),
        CustomOrLoginRegisterWidget(
          orWithText: Text(AppString.orRegisterWith.toString()),
        ),
        BuildLoginWithContainer(),
        BuildTextButton(
          text1: AppString.haveAccount,
          text2: AppString.loginNow,
          onPressedText2: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        )
      ]),
    );

    // CustomScrollView(
    //   slivers: [
    //     FormRegister(),

    //   ],
    // );
  }
}
