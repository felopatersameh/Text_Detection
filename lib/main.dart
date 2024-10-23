import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/features/ai_text_detect/view_model/cubit/image/image_cubit.dart';
import 'package:textdetection/features/ai_text_detect/view_model/cubit/upload/upload_cubit.dart';
import 'core/Config/Route/app_route.dart';
import 'core/Config/Themes/light.dart';
import 'core/constant/app_constants.dart';
import 'core/constant/string.dart';
import 'features/ai_text_detect/view_model/cubit/file/file_cubit.dart';
import 'features/user/view_model/account_settings/account_settings_cubit.dart';
import 'core/services/service_locator.dart';
import 'features/auth/view_model/PasswordVisibility/password_visibility_cubit.dart';
import 'features/auth/view_model/authentication/authentication_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
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
        BlocProvider(
          create: (context) => AccountSettingsCubit(),
        ),
        BlocProvider(
          create: (context) => AuthenticationCubit(),
        ),
        BlocProvider(create: (context) => FileCubit()),
        BlocProvider(create: (context) => UploadCubit()),
        BlocProvider(create: (context) => ImagePickerCubit()),
      ],
      child: ScreenUtilInit(
        designSize:
            Size(AppConstants.figmaDesignWidth, AppConstants.figmaDesignHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          title: AppString.appName,
          theme: themes(),
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
