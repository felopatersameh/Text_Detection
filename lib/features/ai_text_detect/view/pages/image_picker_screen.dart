import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors.dart';
import '../../../auth/view/widgets/back_arrow.dart';
import '../../view_model/cubit/image/image_cubit.dart';
import 'package:textdetection/core/constant/app_constants.dart';

import '../widgets/image_picker/custom_image_picker_source.dart';

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
                            child: Text('Let\'s get the text'),
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
                    child: CustomImagePickerSource(),
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
