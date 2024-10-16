import 'package:flutter/material.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../core/constant/colors.dart';

class IntroCustomBody extends StatelessWidget {
  const IntroCustomBody({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          alignment: Alignment.topCenter,
          color: AppColors.cream,
          child: Image.asset(
            fit: BoxFit.fitWidth,
            imagePath,
            width: MediaQuery.sizeOf(context).height * .5,
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(30),
          height: MediaQuery.sizeOf(context).height * .25,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.style24W700(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(subtitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.style16x2W400()),
            ],
          ),
        ),
      ],
    );
  }
}
