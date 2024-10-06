import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';


class CustomOrLoginRegisterWidget extends StatelessWidget {
  const CustomOrLoginRegisterWidget({super.key, required this.orWithText});
  final Text orWithText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal:45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Expanded(
                child: Divider(
                  color: AppColors.mediumDarkGray,
                ),
              ),
              const SizedBox(width: 8.0,),
              orWithText,//text
              const SizedBox(width: 8.0,),
              Expanded(
                child: Divider(
                  color: AppColors.mediumDarkGray,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),

      ],
    );
  }
}
