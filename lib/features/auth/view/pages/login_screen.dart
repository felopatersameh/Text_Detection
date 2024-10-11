import 'package:flutter/material.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_login_with_container.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/custom_or_login_register_widget.dart';
import '../widgets/form_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }

  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          FormLogin(),
          const SizedBox(
            height: 32.0,
          ),
          CustomOrLoginRegisterWidget(
            orWithText: Text(AppString.orLoginWith.toString()),
          ),
          BuildLoginWithContainer(),
          BuildTextButton(
            text1: AppString.dontHaveAnAccount,
            text2: AppString.registerNow,
            onPressedText2: () {
              Navigator.pushNamed(context, AppRoutes.registerScreen);
            },
          )
        ],
      ),
    );
  }
}
