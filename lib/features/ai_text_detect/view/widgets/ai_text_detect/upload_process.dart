import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/colors.dart';

import '../../../view_model/cubit/file/file_cubit.dart';
import '../../../view_model/cubit/upload/upload_cubit.dart';

class UploadProcess extends StatelessWidget {
  final String fileName;
  final int fileIndex;
  final Function onCancel;
  final Function onComplete;

  const UploadProcess({
    super.key,
    required this.fileName,
    required this.onCancel,
    required this.onComplete, required this.fileIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UploadCubit()..startUpload(),
      child: BlocConsumer<UploadCubit, UploadState>(
        listener: (context, state) {
          if (state is UploadComplete) {
            onComplete();
          } else if (state is UploadCancelled) {
            onCancel();
          }
        },
        builder: (context, state) {
          double percent = 0;
          String statusText = '';

          if (state is UploadInProgress) {
            percent = state.percent;
            statusText = "${percent.toStringAsFixed(0)}%";
          } else if (state is UploadComplete) {
            percent = 100;
            statusText = "Complete";
          } else if (state is UploadCancelled) {
            statusText = "Cancelled";
          }
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              fileName,
                              style: TextStyle(fontSize: 16),
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            statusText,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: percent / 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<FileCubit>().removeFile(fileIndex);
                  debugPrint("File removed: $fileIndex");
                  onCancel();
                },
                icon:  Icon(
                  Icons.close_rounded,
                  color: AppColors.blueDark,
                  size: 15.w,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
