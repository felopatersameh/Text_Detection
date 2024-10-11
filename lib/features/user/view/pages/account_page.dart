import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:textdetection/core/constant/app_images.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/colors.dart';

final userEmail = "Email@gmail.com";
final userName = "User Name";
final userImage = "${AppImages.pngPath}welcome3.png";

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
        // leading: Container(
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   child: IconButton(
        //     padding: EdgeInsets.all(10),
        //     icon: Icon(Icons.arrow_back_ios),
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //   ),
        // ),
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
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(userImage),
          ),
          SizedBox(height: 42),
          Text(
            userName,
            style: TextStyle(fontSize: 14, color: AppColors.darkGray),
          ),
          SizedBox(height: 51),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 50),
            children: [
              Material(
                elevation: 4,
                child: ListTile(
                  title: Text("Email"),
                  titleTextStyle: TextStyle(fontSize: 12, color: Colors.black),
                  subtitle: Text(userEmail),
                  subtitleTextStyle:
                      TextStyle(fontSize: 12, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountEmail),
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                child: ListTile(
                  title: Text("Themes"),
                  titleTextStyle: TextStyle(fontSize: 12, color: Colors.black),
                  subtitle: Text("Light Theme"),
                  subtitleTextStyle:
                      TextStyle(fontSize: 12, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountTheme),
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                child: ListTile(
                  title: Text("Language"),
                  titleTextStyle: TextStyle(fontSize: 12, color: Colors.black),
                  subtitle: Text("English"),
                  subtitleTextStyle:
                      TextStyle(fontSize: 12, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountLanguage),
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 4,
                child: ListTile(
                  title: Text("Account Settings"),
                  titleTextStyle: TextStyle(fontSize: 12, color: Colors.black),
                  // subtitle: Text(""),
                  // subtitleTextStyle:
                  // TextStyle(fontSize: 12, color: AppColors.mediumGray),
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(AppAssets.accountSettings),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
