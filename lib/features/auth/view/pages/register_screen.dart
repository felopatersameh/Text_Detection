import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/colors.dart';

import '../widgets/custom_text_form_field.dart';

late double screenWidth;
late double textScaleFactor;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("---------------------------");
    print(
        '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}');

    /// TODO validation
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmController = TextEditingController();

    return ScreenUtilInit(
      builder: (context, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: AppColors.lightBrown,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                Text(
                  "Hello! Register to get started",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.w,
                      fontWeight: FontWeight.bold),
                ),
                32.verticalSpace,
                CustomTextFormField(
                  hint: "Username",
                  controller: usernameController,
                ),
                12.verticalSpace,
                CustomTextFormField(
                  hint: "Enter your email and Phone Num.",
                  controller: emailController,
                ),
                12.verticalSpace,
                CustomTextFormField(
                  hint: "Enter your password",
                  isPassword: true,
                  controller: passwordController,
                ),
                12.verticalSpace,
                CustomTextFormField(
                  hint: "Confirm password",
                  isPassword: true,
                  controller: confirmController,
                ),
                32.verticalSpace,
                MaterialButton(
                  /// TODO Register validations
                  onPressed: () {},
                  /*
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then(
                        (value) {
                          print(value);
                          print("");
                          print(value.additionalUserInfo);
                          print(value.credential);
                          print(value.user);
                        },
                      );
                    } on FirebaseAuthException catch (e) {
                      print("Auth Error: $e");
                    }
                    print("Current User :${FirebaseAuth.instance.currentUser}");
                  },
                  */

                  color: AppColors.cornFlowerPrimary,
                  height: 48.w,
                  minWidth: double.maxFinite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.w)),
                  textColor: Colors.white,
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 16.w),
                  ),
                ),
                12.verticalSpace,
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          floatingActionButton: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.w,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                  TextSpan(text: "Already have an account? "),
                  TextSpan(
                      text: "Login Now",
                      style: TextStyle(color: AppColors.cornFlowerPrimary)),
                ])),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}
