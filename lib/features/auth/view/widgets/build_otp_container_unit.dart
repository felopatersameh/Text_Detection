import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:textdetection/core/constant/enums.dart';
import '../../../../core/Config/Route/app_route.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';

import '../../../../core/constant/app_constants.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../../core/utils/Widget/custom_messages.dart';
import 'build_otp_content.dart';

class BuildOtpContainerUnit extends StatelessWidget {
  const BuildOtpContainerUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildContentHeader(
          textHeader: AppString.otpMessage,
          textDescription: AppString.enterYourOTP,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: OTPTextField(
            key: UniqueKey(),
            keyboardType: TextInputType.number,
            otpFieldStyle: OtpFieldStyle(backgroundColor: Colors.white),
            length: AppConstants.numberOfOtpField,
            margin: AppConstants.customFormMargin,
            isDense: true,
            textFieldAlignment: MainAxisAlignment.spaceEvenly,
            fieldWidth: 0.15.sw,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 8.r,
            inputFormatter: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            style: AppTextStyles.style22urbanist(),
            onChanged: (pin) {},
            onCompleted: (pin) async {
              if (pin.length == AppConstants.numberOfOtpField) {
                // Validate OTP (replace this with your validation logic)
                Navigator.pushReplacementNamed(
                    context,
                    AppRoutes
                        .createNewPassword); // and go automatic if is correct
              } else {
                customMessages(context,
                    massage: 'Not Correct, Please tray again',
                    massageState: MessageState.error);
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32).r, // Adjust padding if needed
          child: BuildCustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, AppRoutes.createNewPassword);
              // Handle button press for verification (consider adding logic if needed)
            },
            text: AppString.verifyOtpCode,
          ),
        ),
      ],
    );
  }
}
