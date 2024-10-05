import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors.dart';
import 'register_screen.dart';

import '../widgets/custom_text_form_field.dart';

late double screenWidth;
late double textScaleFactor;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // scaleFactor = MediaQuery.of(context).size.width / 100;
    // screenWidth = MediaQuery.of(context).size.width;
    // textScaleFactor = MediaQuery.of(context).size.height / 48;
    // var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    // print("---------------------------");
    print(
        '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}');

    /// TODO validation
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ScreenUtilInit(
      builder: (context, child) => SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lightBrown,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.w),
            child: Column(
              children: [
                Text(
                  "Welcome back! Glad to see you, Again!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.w,
                      fontWeight: FontWeight.bold),
                ),
                32.verticalSpace,
                CustomTextFormField(
                  hint: "Enter your email and Phone Num.",
                  controller: emailController,
                ),
                12.verticalSpace,
                CustomTextFormField(
                  hint: "Enter your password",
                  controller: passwordController,
                  isPassword: true,
                ),
                19.verticalSpace,
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    // TODO forgot screen
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 16.w),
                    ),
                  ),
                ),
                32.verticalSpace,
                MaterialButton(
                  /// TODO login
                  onPressed: () {},
                  color: AppColors.cornFlowerPrimary,
                  height: 48.w,
                  minWidth: double.maxFinite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.w)),
                  textColor: Colors.white,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16.w),
                  ),
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          floatingActionButton: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ));
            },
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.w,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                  TextSpan(text: "Don’t have an account? "),
                  TextSpan(
                      text: "Register Now",
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
