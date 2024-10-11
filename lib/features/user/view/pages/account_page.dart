import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/app_images.dart';
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
        leading: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            padding: EdgeInsets.all(10),
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _buildBody(BuildContext context) {
    // double screenWidth = MediaQuery.sizeOf(context).width;
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
        ],
      ),
    );
  }
}
