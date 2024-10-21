import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:textdetection/core/constant/text_style.dart';
import '../../../../../core/constant/colors.dart';

class UploadProcess extends StatefulWidget {
  final String fileName;
  final Function onCancel;
  const UploadProcess({
    super.key,
    required this.fileName,
    required this.onCancel,
  });

  @override
  State<UploadProcess> createState() => _UploadProcessState();
}

class _UploadProcessState extends State<UploadProcess> {
  double percent = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Icon(
          IconlyLight.document,
          color: AppColors.cornFlowerPrimary,
          size: 24.w,
        ),
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.fileName,
                        style: AppTextStyles.style11(),
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      "${percent.toStringAsFixed(0)}%",
                      style: AppTextStyles.style11(),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                LinearPercentIndicator(
                  padding: const EdgeInsets.all(0),
                  lineHeight: 2.0.h,
                  percent: percent / 100,
                  progressColor: AppColors.cornFlowerPrimary,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            timer?.cancel(); // Cancel the upload process
            widget.onCancel(); // Trigger cancel callback
          },
          child: Icon(
            Icons.close_rounded,
            color: AppColors.blueDark,
            size: 15.w,
          ),
        ),
      ],
    );
  }
}
