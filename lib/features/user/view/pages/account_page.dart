import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/core/constant/app_images.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/colors.dart';

final _userEmail = "Email@gmail.com";
final _userName = "User Name";
final _userImage = "${AppImages.pngPath}welcome3.png";

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
              backgroundImage: AssetImage(_userImage),
            ),
          ),
          SizedBox(height: 20),
          Text(
            _userName,
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
                  subtitle: Text(_userEmail),
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
