import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Config/Route/app_route.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';
import '../../../view_model/cubit/file_cubit.dart';
import 'upload_image_container.dart';
import 'upload_process.dart';

class FileList extends StatelessWidget {
  const FileList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileCubit(),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UploadImageContainer(
              onFilePicked: (fileName) {
                context.read<FileCubit>().addFile(fileName);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: Text(
                "Files",
                style: AppTextStyles.style16xW700(),
              ),
            ),
            Expanded(
              child: BlocBuilder<FileCubit, FileState>(
                builder: (context, state) {
                  if (state is FileFailure) {
                    return Center(
                      child: Text(
                        state.message ?? 'An error occurred.',
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  if (state is FileSuccess) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => UploadProcess(
                        fileName: state.files[index],
                        onCancel: () => context.read<FileCubit>().removeFile(index),
                      ),
                      itemCount: state.files.length,
                      separatorBuilder: (context, index) => SizedBox(height: 20),
                    );
                  }
                  else {
                    return Center(child: Text("No files uploaded yet."));
                  }
                },
              ),
            ),
            BuildCustomButton(
              text: "Confirm",
              color: AppColors.darkBlue,
              height: 0.12,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.extractedTextScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
