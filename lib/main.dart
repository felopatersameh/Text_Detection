import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textdetection/features/intro/view/pages/intro_screen.dart';
import 'Config/Themes/light.dart';
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
          // home: const SplashScreen(),
          home: IntroScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
