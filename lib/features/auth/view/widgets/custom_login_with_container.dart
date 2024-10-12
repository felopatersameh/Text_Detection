import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';

class CustomLoginWith extends StatelessWidget {
final String svgPicture;
final VoidCallback onPressed;
const CustomLoginWith({super.key, required this.svgPicture, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 56,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.lightGray),
          borderRadius:
              BorderRadius.circular(AppConstants.defaultCircularBorder),
        ),
      ),
      child: GestureDetector(
          onTap:onPressed,
          child:  SvgPicture.asset(
            svgPicture,
            width: 26.0,
            height: 26.0,
          ),
          ),
      );
  }
}
