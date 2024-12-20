import 'package:flutter/material.dart';
import 'package:textdetection/features/user/view/widgets/image_view.dart';
import 'package:textdetection/features/user/view/pages/account_page.dart';
import 'package:textdetection/features/user/view/pages/settings_page.dart';
import 'package:textdetection/features/Main/View/Page/main_screen.dart';

import '../../../features/ai_text_detect/view/pages/ai_text_detect.dart';
import '../../../features/ai_text_detect/view/pages/extracted_text.dart';
import '../../../features/ai_text_detect/view/pages/image_picker_screen.dart';
import '../../../features/auth/view/pages/create_new_password_screen.dart';
import '../../../features/auth/view/pages/forgot_password_screen.dart';
import '../../../features/auth/view/pages/login_screen.dart';
import '../../../features/auth/view/pages/otp_verfication_screen.dart';
import '../../../features/auth/view/pages/password_changed.dart';
import '../../../features/auth/view/pages/register_screen.dart';
import '../../../features/home/view/pages/home_screen.dart';
import '../../../features/intro/view/pages/intro_screen.dart';
import '../../../features/splash/view/pages/custom_splash.dart';
import '../../utils/Widget/pages_transition.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String forgotPassword = '/forgot_password_screen';
  static const String otpScreen = '/otp_screen';
  static const String createNewPassword = '/create_new_password_screen';
  static const String passwordChanged = '/password_changed_screen';
  static const String homeScreen = '/home_screen';
  static const String accountScreen = '/account_screen';
  static const String accountSettingsScreen = '/account_settings_screen';
  static const String textDetectScreen = '/text_detect_screen';
  static const String imagePickerScreen = '/image_picker_screen.dart';
  static const String extractedTextScreen = '/extracted_text_screen';
  static const String mainScreen = '/main_screen';
  static const String imageView = '/image_view';

  static final Map<String, WidgetBuilder> routeBuilders = {
    splash: (_) => const MyCustomSplashScreen(),
    /*const SplashScreen(),*/
    onboarding: (_) => const IntroScreen(),
    loginScreen: (_) => const LoginScreen(),
    registerScreen: (_) => const RegisterScreen(),
    forgotPassword: (_) => const ForgotPasswordScreen(),
    otpScreen: (_) => const OtpVerificationScreen(),
    createNewPassword: (_) => const CreateNewPasswordScreen(),
    passwordChanged: (_) => const PasswordChanged(),
    homeScreen: (_) => const HomeScreen(),
    accountScreen: (_) => const AccountScreen(),
    accountSettingsScreen: (_) => const AccountSettingsScreen(),
    textDetectScreen: (_) => const AiTextDetect(),
    imagePickerScreen: (_) => const ImagePickerScreen(),
    extractedTextScreen: (_) => const ExtractedText(),
    mainScreen: (_) => const MainScreen(),
    imageView: (_) => const ImageView(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = routeBuilders[settings.name];
    if (settings.name == onboarding) {
      return PageTransition(IntroScreen());
    } else if (settings.name == imageView) {
      return PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) => const ImageView(),
      );
    } else if (builder != null) {
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
