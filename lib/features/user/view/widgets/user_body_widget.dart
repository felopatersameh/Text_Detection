import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Config/Route/app_route.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../generated/assets.dart';
import 'custom_material_widget.dart';
import 'image_user.dart';

class UserBody extends StatelessWidget {
  const UserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      physics: const RangeMaintainingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          fillOverscroll: true,
          hasScrollBody: false,
          child: Padding(
            padding: AppConstants.customUserBodyPadding.copyWith(top: 20.h),
            child: Column(
              children: [
                //profile image
                AppConstants.userVerticalSpace20,
                ImageUser(),
                AppConstants.userVerticalSpace20,
                Text(
                  "name",
                  style: AppTextStyles.style14Bold(),
                ),
                //------------------------
                AppConstants.userVerticalSpace30,
                //1 => Email Material.
                CustomMaterialWidget(
                  title: AppString.emailUserScreenTitle,
                  subTitle: AppString.emailUserScreenSub,
                  assetName: Assets.svgEmail,
                ),
                //2 => Themes Material.
                CustomMaterialWidget(
                  title: AppString.themUserScreenTitle,
                  subTitle: AppString.themUserScreenSub,
                  assetName: Assets.svgTheme,
                ),
                //3 => Languages Material.
                CustomMaterialWidget(
                  title: AppString.languageUserScreenTitle,
                  subTitle: AppString.languageUserScreenSub,
                  assetName: Assets.svgLanguage,
                ),
                //4 => Manage Account Material.
                CustomMaterialWidget(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.accountSettingsScreen),
                  title: AppString.settingsUserScreenTitle,
                  subTitle: AppString.settingsUserScreenSub,
                  assetName: Assets.svgSettings,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
