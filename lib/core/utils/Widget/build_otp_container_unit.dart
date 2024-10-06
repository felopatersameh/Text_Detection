import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/colors.dart';
import 'package:textdetection/core/constant/text_style.dart';

class BuildOtpContainerUnit extends StatelessWidget {
  const BuildOtpContainerUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.20, color: AppColors.blueDark),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          '0',
          style: AppTextStyles.style22urbanist()  ,
    ),),);
  }
}
