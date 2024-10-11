import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textdetection/features/auth/view/pages/create_new_password_screen.dart';
import 'package:textdetection/features/auth/view/pages/otp_verfication_screen.dart';
import 'package:textdetection/features/auth/view/pages/register_screen.dart';
import 'package:textdetection/features/splash/view/pages/splash_screen.dart';
import 'Config/Themes/light.dart';
import 'features/auth/view/pages/login_screen.dart';



import 'features/auth/view_model/PasswordVisibility/password_visibility_cubit.dart';

void main() {
  runApp(const MyApp());

  /*
 Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (value) {
      print("Firebase.initialized");
    },
  );
   */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PasswordVisibilityCubit(),
          ),
        ],
        child: MaterialApp(
          title: 'Text Detection',
          theme: themeLight(),
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
