import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';

class CustomMaterialWidget extends StatelessWidget {
  const CustomMaterialWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      this.assetName,
      this.onTap});

  final String title;
  final String subTitle;
  final String? assetName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 4.w,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.w),
          ),
          child: ListTile(
            title: Text(title),
            //1
            titleTextStyle: TextStyle(color: Colors.black),
            subtitle: Text(subTitle),
            //2
            subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
            tileColor: Colors.white,

            leading: assetName != null ? SvgPicture.asset(assetName!) : null,
            //3
            shape: RoundedRectangleBorder(
                borderRadius: AppConstants.materialUserCircularDefault),
            onTap: onTap,
          ),
        ),
        AppConstants.userVerticalSpace30,
      ],
    );
  }
}
