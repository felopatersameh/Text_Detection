import 'package:flutter/material.dart';

import '../widgets/Body/body_forgetpassword.dart';
import '../widgets/back_arrow.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: BodyForgetPassword(),
      resizeToAvoidBottomInset: false,
    );
  }
}

