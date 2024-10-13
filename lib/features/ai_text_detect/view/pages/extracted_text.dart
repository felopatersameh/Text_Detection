import 'package:flutter/material.dart';
import 'package:textdetection/core/utils/Widget/custom_back_button.dart';

import '../../../../core/constant/colors.dart';

class ExtractedText extends StatelessWidget {
  const ExtractedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Extracted Text",
           style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.drakBlue,

           ),

        ),
      ),
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
