import 'package:flutter/material.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/utils/Widget/build_login_with_container.dart';
import '../../../../core/utils/Widget/build_text_button.dart';
import '../widgets/back_arrow.dart';
import '../widgets/custom_or_login_register_widget.dart';
import '../widgets/form_register.dart';
import 'login_screen.dart';

late double screenWidth;
late double textScaleFactor;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: _buildBody(context),
      resizeToAvoidBottomInset: false,
    );
  }


  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        FormRegister(),
        const SizedBox(
          height: 32.0,
        ),
        CustomOrLoginRegisterWidget(
          orWithText: Text(AppString.orRegisterWith.toString()),
        ),
        BuildLoginWithContainer(),
        BuildTextButton(
          text1: AppString.haveAccount,
          text2: AppString.loginNow,
          onPressedText2: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        )
      ]),
    );

    // CustomScrollView(
    //   slivers: [
    //     FormRegister(),

    //   ],
    // );
  }
}
