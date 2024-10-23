import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Models/hive_app_model.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/string.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../generated/assets.dart';

class MyCustomSplashScreen extends StatefulWidget {
  const MyCustomSplashScreen({super.key});

  @override
  MyCustomSplashScreenState createState() => MyCustomSplashScreenState();
}

class MyCustomSplashScreenState extends State<MyCustomSplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  AnimationController? _controller;
  Animation<double>? animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation1 = Tween<double>(
      begin: 40.sp, // Convert to responsive size
      end: 20.sp, // Convert to responsive size
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    )..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller!.forward();

    Timer(Duration(seconds: 2), () {
      setState(() {
        _fontSize = 1.0;
      });
    });

    Timer(Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 4), () {
      setState(() {
        Navigator.of(context)
            .pushReplacementNamed(getIt<HiveAppModel>().startScreen);
      });
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Column(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: (constraints.maxHeight / _fontSize).clamp(
                        0.0,
                        constraints.maxHeight - 100.h,
                      ),
                    ),
                    Flexible(
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 1000),
                        opacity: _textOpacity,
                        child: Text(
                          AppString.appName,
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: animation1!.value,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 2000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    opacity: _containerOpacity,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: (0.7.sw / _containerSize).clamp(
                        0.0,
                        constraints.maxHeight * 0.7, // Limit maximum height
                      ),
                      width: (0.7.sw / _containerSize).clamp(
                        0.0,
                        constraints.maxWidth * 0.7, // Limit maximum width
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(30.r), // Responsive radius
                      ),
                      child: Image.asset(Assets.pngDetectiveLogo),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
