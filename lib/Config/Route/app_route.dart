import 'package:flutter/material.dart';

import '../../features/auth/view/pages/forgot_password_screen.dart';
import '../../features/auth/view/pages/login_screen.dart';
import '../../features/auth/view/pages/register_screen.dart';
import '../../features/splash/view/pages/splash_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String forgotPassword = '/forgot_password_screen';
  static const String otpScreen = '/otp_screen';
  static const String createNewPassword = '/create_new_password_screen';
  static const String passwordChanged = '/password_changed_screen';
  static const String homeScreen = '/home_screen';
  static const String splashScreen = '/splash_screen';



  static const String initialRoute = '/initialRoute';
  static Map<String,WidgetBuilder> get routes => {
    // splashScreen: SplashScreen.builder,
    // loginScreen: LoginScreen.builder,
    // registerScreen: RegisterScreen.builder,
    // forgotPassword: ForgotPasswordScreen.builder,
    // otpScreen: OtpVerificationScreen.builder,
    // createNewPassword: CreateNewPasswordScreen.builder,
    // passwordChanged: PasswordChangedScreen.builder,
    // homeScreen: HomeScreen.builder,
    // initialRoute: SplashScreen.builder,

  };
}