import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/constant/colors.dart';

class CustomLoginWith extends StatelessWidget {
final SvgPicture svgPicture;
const CustomLoginWith({super.key, required this.svgPicture});

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
      child: IconButton(
          onPressed: () {
           // TODO:
          },
          icon: svgPicture,
          ),
      );
  }
}
