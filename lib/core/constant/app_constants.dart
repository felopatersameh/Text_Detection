import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';class AppConstants {  static BorderRadius defaultCircularBorder =      BorderRadius.all(Radius.circular(8.r)).w;  static const int numberOfOtpField = 4;  static EdgeInsets customFormPadding =      EdgeInsets.only(left: 32.5, right: 32.5, top: 8.0).r;  static EdgeInsets customUserBodyPadding =      EdgeInsets.symmetric(horizontal: 50.w);  static const EdgeInsets customFormMargin =      EdgeInsets.symmetric(horizontal: 10.0);  static const double figmaDesignWidth = 360;  static const double figmaDesignHeight = 690;  //Custom Material 4 user.  static SizedBox userVerticalSpace16 = 16.h.verticalSpace;  static SizedBox userVerticalSpace30 = 30.h.verticalSpace;  static SizedBox userVerticalSpace60 = 60.h.verticalSpace;  static SizedBox userVerticalSpace20 = 20.h.verticalSpace;  static double userElevation2 = 4.w;  static double userElevation1 = 10.w;  static BorderRadius materialUserCircularDefault = BorderRadius.circular(6.w);}