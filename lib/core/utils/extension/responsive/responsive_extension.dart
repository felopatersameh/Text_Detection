/*
import 'package:flutter/material.dart';

extension WidthExtension on num {
  double get w => this * SizeConfig.screenWidth! / SizeConfig.figmaDesignWidth;

  double get h =>
      this * SizeConfig.screenHeight! / SizeConfig.figmaDesignHeight;

  SizedBox get verticalSpace => SizedBox(height: toDouble());

  SizedBox get horizontalSpace => SizedBox(width: toDouble());
}

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static const figmaDesignWidth = 428;
  static const figmaDesignHeight = 926;

  // Private Constructor
  SizeConfig._();

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
*/