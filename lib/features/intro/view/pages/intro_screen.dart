import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import '../../../../core/Config/Route/app_route.dart';
import '../../../../core/Models/hive_app_model.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/services/service_locator.dart';
import '../widgets/intro_custom.dart';
import '../../../../generated/assets.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: AppString.finishOnboardingButton,
      onFinish: () {
        _onPressed(context);
      },
      skipFunctionOverride: () {
        _onPressed(context);
      },
      skipTextButton: Text(
        'Skip',
        style: AppTextStyles.style16xW500(),
      ),
      controllerColor: AppColors.blueDark,
      totalPage: 3,
      headerBackgroundColor: AppColors.cream,
      pageBackgroundColor: AppColors.white,
      background: [
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 0,
        ),
        SizedBox(
          width: 0,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        IntroCustomBody(
          imagePath: Assets.pngWelcome1,
          title: AppString.firstBoardTitle,
          subtitle: AppString.firstBoardSubtitle,
        ),
        IntroCustomBody(
          imagePath: Assets.pngWelcome2,
          title: AppString.secondBoardTitle,
          subtitle: AppString.secondBoardSubtitle,
        ),
        IntroCustomBody(
          imagePath: Assets.pngWelcome3,
          title: AppString.thirdBoardTitle,
          subtitle: AppString.thirdBoardSubtitle,
        ),
      ],
    );
  }

  Function? _onPressed(context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
    final hiveAppModel = getIt<HiveAppModel>();
    hiveAppModel.onboarding = false;
    hiveAppModel.save();
    return null;
  }
}
