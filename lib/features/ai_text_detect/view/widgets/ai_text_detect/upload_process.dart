import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
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
        const Icon(
          IconlyLight.document,
          color: AppColors.cornFlowerPrimary,
          size: 24,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.fileName, // Display dynamic file name
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          overflow:
                              TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      "${percent.toStringAsFixed(0)}%", // Display progress
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.lightGray,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LinearPercentIndicator(
                  padding: const EdgeInsets.all(0),
                  lineHeight: 2.0,
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
          child: const Icon(
            Icons.close_rounded,
            color: AppColors.blueDark,
            size: 15,
          ),
        ),
      ],
    );
  }
}
