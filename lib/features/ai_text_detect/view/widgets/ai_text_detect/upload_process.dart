import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../../core/constant/colors.dart';

class UploadProcess extends StatefulWidget {
  const UploadProcess({super.key});

  @override
  State<UploadProcess> createState() => _UploadProcessState();
}

class _UploadProcessState extends State<UploadProcess> {
  double percent = 0;



  @override
  void initState() {
    Timer? timer;
    timer = Timer.periodic(const Duration(milliseconds:1000),(_){
      setState(() {
        percent+=10;
        if(percent >= 100){
          timer?.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
        IconlyLight.document,
          weight: 100,
          color: AppColors.cornFlowerPrimary,
          size: 24,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(
                        "PDF",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                     ),
                      Text(
                       "$percent%",
                       style: TextStyle(
                         fontSize: 11,
                         color: AppColors.lightGray,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ],
                 ),
                 const SizedBox(height: 8,),
                 LinearPercentIndicator(
                   padding: const EdgeInsets.all(0),
                  //width: 350,
                  lineHeight: 2.0,
                  percent: percent/100,
                  progressColor:AppColors.cornFlowerPrimary,
                 ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
          Icons.close_rounded,
            weight: 20,
            color: AppColors.blueDark,
            size: 15,
          ),
        ),
      ],
    );
  }
}
