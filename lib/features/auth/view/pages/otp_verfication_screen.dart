import 'package:flutter/material.dart';
import '../widgets/Body/body_otp.dart';
import '../widgets/back_arrow.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String? code;
  final String? phone;

  const OtpVerificationScreen({super.key, this.code, this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: BodyOtp(phone??"5"),
      resizeToAvoidBottomInset: false,
    );
  }
}
