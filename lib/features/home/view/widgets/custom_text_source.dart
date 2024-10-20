import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../core/constant/app_constants.dart';

class CustomTextSource extends StatelessWidget {
  const CustomTextSource(
      {super.key,
      required this.assetPath,
      required this.taskTitle,
      this.onTap});

  final String assetPath;
  final String taskTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 68).r,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          constraints: BoxConstraints(maxWidth: 175, minHeight: 51).w,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.w,
            ),
            borderRadius: AppConstants.defaultCircularBorder,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                assetPath,
                width: 25.w,
                height: 25.w,
              ),
              Text(
                taskTitle,
                style: AppTextStyles.style16xW500(),
                maxLines: taskTitle.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
