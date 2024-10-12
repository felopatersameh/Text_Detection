import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/colors.dart';
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
    return Center(
      child: Column(
        children: [
          SizedBox(height: 22),
          Material(
            shape: CircleBorder(),
            elevation: 10,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                  context.watch<AccountSettingsCubit>().state.imageUrl),
            ),
          ),
          SizedBox(height: 20),
          Text(
            context.watch<AccountSettingsCubit>().state.name,
            style: TextStyle(fontSize: 18, color: AppColors.darkGray),
          ),
          SizedBox(height: 30),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 50),
            children: [
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListTile(
                  title: Text("Email"),
                  titleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                  subtitle: Text(UserDataModel.email),
                  subtitleTextStyle:
                      TextStyle(fontSize: 14, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountEmail),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onTap: () {},
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  title: Text("Themes"),
                  titleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                  subtitle: Text("Light Theme"),
                  subtitleTextStyle:
                      TextStyle(fontSize: 14, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountTheme),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onTap: () {},
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  title: Text("Language"),
                  titleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                  subtitle: Text("English"),
                  subtitleTextStyle:
                      TextStyle(fontSize: 14, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountLanguage),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onTap: () {},
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  title: Text("Account Settings"),
                  titleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountSettings),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.accountSettingsScreen);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
