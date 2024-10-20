import 'package:flutter/material.dart';
import '../../../../core/constant/string.dart';

import '../../../../core/constant/colors.dart';
import '../../../auth/view/widgets/back_arrow.dart';

class ExtractedText extends StatelessWidget {
  const ExtractedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context,title: AppString.extractedTextHeader),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                " EXTRACTED TEXT FROM FILE",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w500,

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white, // Background color
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(vertical: 15), // Padding for the icon
                child:Text(
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                  "EXTRACTED TEXT FROM FILE\n"
                      ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.darkGray,
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
