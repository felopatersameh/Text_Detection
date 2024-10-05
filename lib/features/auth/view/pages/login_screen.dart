import 'package:flutter/material.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/form_login.dart';

import 'register_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          FormLogin(),
          BuildTextButton(
            text1: AppString.haveAnAccount,
            text2: AppString.registerNow,
            onPressedText2: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
