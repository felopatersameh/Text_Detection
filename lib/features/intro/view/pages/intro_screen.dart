import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import '../../../../Config/Route/app_route.dart';
import '../../../../core/constant/string.dart';
import '../widgets/intro_custom.dart';
import '../../../../generated/assets.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: AppString.loginName,
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
          imageUrl: Assets.pngWelcome1,
          title: 'Welcome to Quizzo!',
          subtitle: 'Compete with friends,'
              'earn points, and climb the leaderboard in this addictive trivia challenge.',
        ),
        IntroCustomBody(
            imageUrl: Assets.pngWelcome2,
            title: "The Ultimate Trivia Challenge",
            subtitle: "Put your knowledge to the test and prove "
                "your expertise across a wide range of topics in this engaging game."),
        IntroCustomBody(
            imageUrl: Assets.pngWelcome3,
            title: "Test Your Knowledge with Quizzo",
            subtitle: "Quizzo is the perfect app to challenge "
                "yourself and your friends, with endless trivia fun at your fingertips."),
      ],
    );
  }

  Function? _onPressed(context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
    return null;
  }
}
