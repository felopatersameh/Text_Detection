import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white, // Background color
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15), // Rounded corners
          ),
          //margin: EdgeInsets.all(12), // Padding for the icon
          child: Icon(
            Icons.arrow_back_ios_new_rounded, // The arrow icon
            color: AppColors.black, // Icon color
          ),
        ),
      ),
    );
  }
}
