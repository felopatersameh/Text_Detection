import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/cubit/file_cubit.dart';
import '../../../view_model/cubit/upload_cubit.dart';

class UploadProcess extends StatelessWidget {
  final String fileName;
  final Function onCancel;

  const UploadProcess({
    super.key,
    required this.fileName,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UploadCubit()..startUpload(),
      child: BlocBuilder<UploadCubit, UploadState>(
        builder: (context, state) {
          double percent = 0;
          String statusText = '';

          if (state is UploadInProgress) {
            percent = state.percent;
            statusText = "${percent.toStringAsFixed(0)}%";
          } else if (state is UploadComplete) {
            statusText = "Upload Complete";
          } else if (state is UploadCancelled) {
            statusText = "Upload Cancelled";
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.file_present,
                color: Colors.blue,
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
                  context.read<FileCubit>().addFile(fileName);
                  debugPrint("File added: $fileName");
                  onCancel();
                },
                icon: Icon(Icons.close),
                color: Colors.red,
              ),
            ],
          );
        },
      ),
    );
  }
}
