import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/colors.dart';
import 'package:textdetection/core/utils/Widget/custom_list_tile.dart';
import 'package:textdetection/features/user/model/user_data_model.dart';
import 'package:textdetection/features/user/view_model/account_settings/account_settings_cubit.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,
        leading: SizedBox(),
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    context.read<AccountSettingsCubit>().initializeUserData();
    super.initState();
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          children: [
            20.h.verticalSpace,
            // Profile Image
            Material(
              shape: CircleBorder(),
              elevation: 10.w,
              child: CircleAvatar(
                radius:
                    MediaQuery.orientationOf(context) == Orientation.portrait
                        ? 70.w
                        : 40.w,
                backgroundImage: AssetImage(
                    context.watch<AccountSettingsCubit>().state.imageUrl),
              ),
            ),
            20.dm.verticalSpace,
            Text(
              context.watch<AccountSettingsCubit>().state.name,
              style: TextStyle(fontSize: 20.spMin, color: AppColors.darkGray),
            ),
            30.dm.verticalSpace,
            CustomListTile(
              title: "Email",
              subtitle: UserDataModel.email,
              leading: SvgPicture.asset(AppAssets.accountEmail),
              onTap: () {},
            ),
            30.dm.verticalSpace,
            CustomListTile(
              title: "Themes",
              subtitle: "Light Theme",
              leading: SvgPicture.asset(AppAssets.accountTheme),
              onTap: () {},
            ),
            30.dm.verticalSpace,
            CustomListTile(
              title: "Language",
              subtitle: "English",
              leading: SvgPicture.asset(AppAssets.accountLanguage),
              onTap: () {},
            ),
            30.dm.verticalSpace,
            CustomListTile(
              title: "Account Settings",
              leading: SvgPicture.asset(AppAssets.accountSettings),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.accountSettingsScreen);
              },
            ),
            30.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}
