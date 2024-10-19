import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/core/constant/text_style.dart';
import 'package:textdetection/generated/assets.dart';

import 'custom_text_source.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: SvgPicture.asset(Assets.svgAscan),
                ),
                Text(
                  AppString.headerTaskScreen,
                  style: AppTextStyles.style30(),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextSource(
              assetPath: Assets.svgImgtotext,
              taskTitle: AppString.imageTaskTile,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextSource(
              assetPath: Assets.svgPdftoext,
              taskTitle: AppString.pdfTaskTile,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextSource(
              assetPath: Assets.svgQR,
              taskTitle: AppString.qrCodeTaskTile,
            ),
          ),
        ]);
  }
}
