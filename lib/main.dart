import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Config/Route/app_route.dart';
import 'Config/Themes/light.dart';

import 'features/auth/view_model/PasswordVisibility/password_visibility_cubit.dart';
import 'features/auth/view_model/authentication/authentication_cubit.dart';

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

var count = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    print("Count :: ${++count}");
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
        ),
        BlocProvider(
          create: (context) => AuthenticationCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(width, height),
        child: MaterialApp(
          title: 'Text Detection',
          theme: themeLight(),
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
