import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../constant/text_style.dart';

import '../../constant/app_constants.dart';

class BuildOtpContainerUnit extends StatelessWidget {
  const BuildOtpContainerUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: OTPTextField(
          keyboardType: TextInputType.number,
          otpFieldStyle: OtpFieldStyle(backgroundColor: Colors.white),
          length: AppConstants.numberOfOtpField,
          margin: AppConstants.customFormMargin,
          isDense: true,
          textFieldAlignment: MainAxisAlignment.spaceEvenly,
          fieldWidth: .15.sw,
          fieldStyle: FieldStyle.box,
          outlineBorderRadius: 8,
          style: AppTextStyles.style22urbanist(),
          onChanged: (pin) {},
          // ToDo
          onCompleted: (pin) async {
            /* try {
              context.loaderOverlay.show();
              // var token = await AuthService.instance.verifyOtp(
              //     countryCode: code, phone: phone, pin: pin);
             //if (!token.isEmptyOrNull) {
                context.loaderOverlay.hide();
                // setUserToken(token!);
                // Provider.of<ProfileViewModel>(context , listen: false).getUserData();
                // goToRemove(const MainScreen());
              }
            } catch (e) {
              context.loaderOverlay.hide();
              // ErrorHandler.handle(e); */

            // ToDo
            //we should create an utils/helper.dart
          }),
    );
  }
}
