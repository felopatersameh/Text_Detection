import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/constant/string.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../generated/assets.dart';
import '../../view_model/account_settings/account_settings_cubit.dart';
import 'custom_material_widget.dart';

class UserBody extends StatelessWidget {
  const UserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppConstants.customUserBodyPadding,
        child: Column(
          children: [
            //profile image
            AppConstants.userVerticalSpace20,
            Material(
              shape: CircleBorder(),
              elevation: AppConstants.userElevation1,
              child: CircleAvatar(
                radius:
                    MediaQuery.orientationOf(context) == Orientation.portrait
                        ? 70.w
                        : 40.w,
                backgroundImage: AssetImage(
                    context.watch<AccountSettingsCubit>().state.imageUrl),
              ),
            ),
            AppConstants.userVerticalSpace20,
            // Account Name
            Text(
              context.watch<AccountSettingsCubit>().state.name,
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
              title: AppString.settingsUserScreenTitle,
              subTitle: AppString.settingsUserScreenSub,
              assetName: Assets.svgSettings,
            ),

            //old
            // Material(
            //   elevation: 4.w,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(6.w),
            //   ),
            //   child: ListTile(
            //     title: Text("Email"), //1
            //     titleTextStyle: TextStyle(color: Colors.black),
            //     subtitle: Text(UserDataModel.email), //2
            //     subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
            //     tileColor: Colors.white,
            //     leading: SvgPicture.asset(Assets.svgEmail), //3
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(6.w)),
            //     onTap: () {},
            //   ),
            // ),
            // AppConstants.userVerticalSpace,
            // Material(
            //   elevation: 4.w,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(6.w)),
            //   child: ListTile(
            //     title: Text("Themes"),
            //     titleTextStyle: TextStyle(color: Colors.black),
            //     subtitle: Text("Light Theme"),
            //     subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
            //     tileColor: Colors.white,
            //     leading: SvgPicture.asset(Assets.svgTheme),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(6.w)),
            //     onTap: () {},
            //   ),
            // ),
            // AppConstants.userVerticalSpace,
            // Material(
            //   elevation: 4.w,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(6.w)),
            //   child: ListTile(
            //     title: Text("Language"),
            //     titleTextStyle: TextStyle(color: Colors.black),
            //     subtitle: Text("English"),
            //     subtitleTextStyle: TextStyle(color: AppColors.mediumGray),
            //     tileColor: Colors.white,
            //     leading: SvgPicture.asset(Assets.svgLanguage),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(6.w)),
            //     onTap: () {},
            //   ),
            // ),
            // AppConstants.userVerticalSpace,
            // Material(
            //   elevation: 4.w,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(6.w)),
            //   child: ListTile(
            //     title: Text("Account Settings"),
            //     titleTextStyle: TextStyle(color: Colors.black),
            //     tileColor: Colors.white,
            //     leading: SvgPicture.asset(Assets.svgSettings),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(6.w)),
            //     onTap: () {
            //       Navigator.pushNamed(context, AppRoutes.accountSettingsScreen);
            //     },
            //   ),
            // ),
            // AppConstants.userVerticalSpace,
          ],
        ),
      ),
    );
  }
}
