import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:textdetection/features/auth/view/pages/login_screen.dart';
import 'package:textdetection/features/intro/view/widgets/intro_custom.dart';
import 'package:textdetection/generated/assets.dart';
import '../../../../core/constant/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      // finishButtonText: 'Skip',
      // onFinish: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const LoginScreen(),
      //     ),
      //   );
      // },
      skipFunctionOverride: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.darkGray,
          fontWeight: FontWeight.w500,
        ),
      ),
      controllerColor: AppColors.blueDark,
      totalPage: 3,
      headerBackgroundColor: AppColors.cream,
      pageBackgroundColor: AppColors.white,
      background: [
        SizedBox(width: 0,),
        SizedBox(width: 0,),
        SizedBox(width: 0,),
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
                "your expertise across a wide range of topics in this engaging game."
        ),
        IntroCustomBody(
            imageUrl: Assets.pngWelcome3,
            title: "Test Your Knowledge with Quizzo",
            subtitle: "Quizzo is the perfect app to challenge "
                "yourself and your friends, with endless trivia fun at your fingertips."
        ),
      ],
    );
  }
}
