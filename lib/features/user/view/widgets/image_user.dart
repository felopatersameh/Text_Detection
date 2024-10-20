import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:textdetection/Config/Route/app_route.dart';import 'package:textdetection/generated/assets.dart';import '../../../../core/constant/app_constants.dart';class ImageUser extends StatelessWidget {  const ImageUser({super.key});  @override  Widget build(BuildContext context) {    return GestureDetector(        onTap: () {          Navigator.pushNamed(context, AppRoutes.imageView);        },        child: Material(          shape: CircleBorder(),          elevation: AppConstants.userElevation1,          child: CircleAvatar(            radius: MediaQuery.orientationOf(context) == Orientation.portrait                ? 70.w                : 40.w,            backgroundImage: AssetImage(Assets.pngProfile),          ),        ));  }}