import 'package:flutter/material.dart';
import '../widgets/form_forget_password.dart';

import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/back_arrow.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: Column(
        children: [
          FormForgetPassword(),
          BuildTextButton(
            text1: AppString.rememberPassword,
            text2: AppString.loginNow,
            onPressedText2: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
