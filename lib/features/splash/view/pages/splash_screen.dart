import 'package:flutter/material.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cream, // Replace with your desired color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //     Assets.detectiveLogo), // Replace with your logo image path
            const SizedBox(height: 20),
            Text(AppString.appName, style: AppTextStyles.style32()),
          ],
        ),
      ),
    );
  }
}
