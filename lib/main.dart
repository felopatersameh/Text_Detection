import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textdetection/core/utils/extension/responsive/responsive_extension.dart';
import 'package:textdetection/features/user/view_model/account_settings/account_settings_cubit.dart';

import 'Config/Route/app_route.dart';
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
    SizeConfig.init(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PasswordVisibilityCubit(),
          ),
          BlocProvider(
            create: (context) => AccountSettingsCubit(),
          ),
        ],
        child: MaterialApp(
          title: 'Text Detection',
          theme: themeLight(),
          initialRoute: AppRoutes.loginScreen,
          onGenerateRoute: AppRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
        ));
  }
}
