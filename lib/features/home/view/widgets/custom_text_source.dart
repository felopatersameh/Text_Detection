import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../core/constant/app_constants.dart';

class CustomTextSource extends StatelessWidget {
  const CustomTextSource(
      {super.key, required this.assetPath, required this.taskTitle});

  final String assetPath;
  final String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 173.w,
          height: 51.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.w,
            ),
            borderRadius: AppConstants.defaultCircularBorder,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetPath),
              Text(taskTitle, style: AppTextStyles.style16xW700Dblue()),
            ],
          ),
        ),
        AppConstants.userVerticalSpace30, //imageToText
      ],
    );
  }
}
