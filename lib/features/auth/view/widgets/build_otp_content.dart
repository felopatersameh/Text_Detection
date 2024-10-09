import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/core/constant/text_style.dart';

import '../../../../core/utils/Widget/build_otp_container_unit.dart';

class BuildOtpContent extends StatelessWidget {
  const BuildOtpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppString.otpMessage,
              style: AppTextStyles.style30(),
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            AppString.enterYourOTP,
            style: AppTextStyles.style14(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 32.0),
          BuildOtpContainerUnit(),
        ],
      ),
    );
  }
}
