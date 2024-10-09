import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/core/constant/string.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../../core/utils/Widget/build_otp_container_unit.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/build_otp_content.dart';
import 'create_new_password_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String? code;
  final String? phone;

  const OtpVerificationScreen({super.key, this.code, this.phone});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.cream,
        appBar: AppBar(
          leadingWidth: 72.0,
          backgroundColor: AppColors.cream,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 19,
              height: 19,
              margin: EdgeInsets.only(left: 32.0, top: 7.0, bottom: 8.0),
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
        body: Container(
          width: double.maxFinite,
          padding: AppConstants.customFormPadding,
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            _otpViewBody(context),
          ]),
        ),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BuildTextButton(
          text1: AppString.didntReceivedAnyOtpCode,
          text2: AppString.resendOtpCode,
          onPressedText2: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateNewPasswordScreen(),
                ));
          },
        ),
      ),
    );
  }
}

Widget _otpViewBody(BuildContext context) {
  return Column(
    children: [
      BuildOtpContent(), //otp texts header
      BuildOtpContainerUnit(),
      BuildCustomButton(
        text: AppString.verifyOtpCode,
      ), // otpFormField
    ],
  );
}
