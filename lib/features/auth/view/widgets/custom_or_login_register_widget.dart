import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors.dart';

class CustomOrLoginRegisterWidget extends StatelessWidget {
  const CustomOrLoginRegisterWidget({super.key, required this.orWithText});

  final Text orWithText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 45.0).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: AppColors.mediumDarkGray,
                ),
              ),
              8.horizontalSpace,
              orWithText, //text
              8.horizontalSpace,

              Expanded(
                child: Divider(
                  color: AppColors.mediumDarkGray,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
