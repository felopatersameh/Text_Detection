import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/constant/assets.dart';
import 'package:textdetection/core/constant/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Replace with your desired color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                AppAssets.detectiveLogo), // Replace with your logo image path
            const SizedBox(height: 20),
            Text(AppConstants.appName, style: AppTextStyles.style24()),
          ],
        ),
      ),
    );
  }
}
