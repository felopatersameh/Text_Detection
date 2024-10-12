import 'package:flutter/material.dart';
import 'package:textdetection/features/auth/view/pages/otp_verfication_screen.dart';
import 'package:textdetection/features/auth/view/pages/password_changed.dart';
import 'package:textdetection/features/user/view/pages/account_page.dart';
import 'package:textdetection/features/user/view/pages/settings_page.dart';

import '../../features/auth/view/pages/create_new_password_screen.dart';
import '../../features/auth/view/pages/forgot_password_screen.dart';
import '../../features/auth/view/pages/login_screen.dart';
import '../../features/auth/view/pages/register_screen.dart';
import '../../features/home/view/pages/home_screen.dart';
import '../../features/splash/view/pages/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String forgotPassword = '/forgot_password_screen';
  static const String otpScreen = '/otp_screen';
  static const String createNewPassword = '/create_new_password_screen';
  static const String passwordChanged = '/password_changed_screen';
  static const String homeScreen = '/home_screen';
  static const String accountScreen = '/account_screen';
  static const String accountSettingsScreen = '/account_settings_screen';

  static final Map<String, WidgetBuilder> routeBuilders = {
    splash: (_) => const SplashScreen(),
    loginScreen: (_) => const LoginScreen(),
    registerScreen: (_) => const RegisterScreen(),
    forgotPassword: (_) => const ForgotPasswordScreen(),
    otpScreen: (_) => const OtpVerificationScreen(),
    createNewPassword: (_) => const CreateNewPasswordScreen(),
    passwordChanged: (_) => const PasswordChanged(),
    homeScreen: (_) => const HomeScreen(),
    accountScreen: (_) => const AccountScreen(),
    accountSettingsScreen: (_) => const AccountSettingsScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = routeBuilders[settings.name];
    if (builder != null) {
      return MaterialPageRoute(builder: builder);
    }

    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Page not found')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
