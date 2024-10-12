import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:textdetection/core/utils/Widget/build_default_button.dart';
import 'package:textdetection/core/utils/extension/responsive/WidthExtension.dart';

import '../../../../core/constant/assets.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/utils/Widget/password_text__form_field.dart';
import '../../../auth/view/widgets/custom_text_form_field.dart';

final _userName = "User Name";
final _userPassword = "12345";

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
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
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    return Center(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              children: [
                SizedBox(height: 60.w),
                Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      "Change User Name",
                    ),
                    subtitle: Text(
                      _userName,
                      style: TextStyle(color: AppColors.mediumGray),
                    ),
                    backgroundColor: Colors.amberAccent,
                    collapsedBackgroundColor: Colors.white,
                    leading: SvgPicture.asset(AppAssets.accountEmail),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CustomTextFormField(
                          hint: "Enter Your Name",
                          controller: nameController,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: ExpansionTile(
                    title: Text(
                      "Change Password",
                    ),
                    backgroundColor: Colors.orangeAccent,
                    collapsedBackgroundColor: Colors.white,
                    leading: Icon(Icons.lock),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: CustomPasswordTextFromField(
                            controller: passwordController,
                            fieldId: "settingsPass"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: ListTile(
                    title: Text("Change Profile Image"),
                    tileColor: Colors.white,
                    leading: Icon(Icons.image_outlined),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: BuildCustomButton(
              text: "Save Changes",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
