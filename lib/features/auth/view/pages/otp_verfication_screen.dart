import 'package:flutter/material.dart';
import '../../../../Config/Route/app_route.dart';
import '../../../../core/constant/string.dart';
import '../widgets/back_arrow.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../../core/utils/Widget/build_otp_container_unit.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/build_otp_content.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String? code;
  final String? phone;

  const OtpVerificationScreen({super.key, this.code, this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream,
      appBar: backArrow(context),
      body: _otpViewBody(context),
      resizeToAvoidBottomInset: false,
    );
  }
}

Widget _otpViewBody(BuildContext context) {
  return Padding(
    padding: AppConstants.customFormPadding,
    child: Column(
      children: [
        BuildOtpContent(), //otp texts header
        BuildOtpContainerUnit(),
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: BuildCustomButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.createNewPassword);
            },
            text: AppString.verifyOtpCode,
          ),
        ),
        BuildTextButton(
          text1: AppString.didntReceivedAnyOtpCode,
          text2: AppString.resendOtpCode,
          onPressedText2: () {
            // resend code
          },
        ) // otpFormField
      ],
    ),
  );
}
