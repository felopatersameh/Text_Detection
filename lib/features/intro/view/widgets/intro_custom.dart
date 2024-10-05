import 'package:flutter/material.dart';
import '../../../../core/constant/colors.dart';


class IntroCustomBody extends StatelessWidget {
  const IntroCustomBody({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });
  final String imageUrl ;
  final String title ;
  final String subtitle ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          alignment: Alignment.topCenter,
          color:AppColors.cream ,
          child: Image.asset(
            fit: BoxFit.fitWidth,
            imageUrl,
            height: 450,
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width:MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(30),
          height: 240,
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
                style: TextStyle(
                  color: AppColors.nearBlack,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.darkGray,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
