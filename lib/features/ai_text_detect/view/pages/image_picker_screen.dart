import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textdetection/core/constant/string.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_style.dart';
import '../../../auth/view/widgets/back_arrow.dart';
import '../../view_model/cubit/image/image_cubit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textdetection/core/constant/app_constants.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerCubit(),
      child: ImagePickerView(),
    );
  }
}

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: SafeArea(
        child: Padding(
          padding: AppConstants.customFormPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<ImagePickerCubit, ImagePickerState>(
                builder: (context, state) {
                  if (state is ImagePickerLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is ImagePickerSuccess) {
                    return Center(
                      child: Column(
                        children: [
                          Container(
                            width: 200.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.redGary),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.file(
                              state.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppConstants.userVerticalSpace16,
                          ElevatedButton(
                            onPressed: () {
                              context.read<ImagePickerCubit>().resetImage();
                            },
                            child: Text('Detect the Text'),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state is ImagePickerError) {
                    return Center(
                      child: Text(
                        state.error,
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.imageNotSelected,
                          style: AppTextStyles.style16xW700(),
                        ),
                        AppConstants.userVerticalSpace16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                context
                                    .read<ImagePickerCubit>()
                                    .pickImage(ImageSource.camera);
                              },
                              icon: Icon(Icons.camera_alt),
                              label: Text(AppString.cameraPicker),
                            ),
                            AppConstants.userVerticalSpace16w,
                            ElevatedButton.icon(
                              onPressed: () {
                                context
                                    .read<ImagePickerCubit>()
                                    .pickImage(ImageSource.gallery);
                              },
                              icon: Icon(Icons.photo_library),
                              label: Text(AppString.galleryPicker),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
