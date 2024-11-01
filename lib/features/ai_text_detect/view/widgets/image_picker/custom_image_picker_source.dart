import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/constant/app_constants.dart';
import '../../../../../core/constant/string.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../view_model/cubit/image/image_cubit.dart';

class CustomImagePickerSource extends StatelessWidget {
  const CustomImagePickerSource({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                context.read<ImagePickerCubit>().pickImage(ImageSource.camera);
              },
              icon: Icon(Icons.camera_alt),
              label: Text(AppString.cameraPicker),
            ),
            AppConstants.userVerticalSpace16w,
            ElevatedButton.icon(
              onPressed: () {
                context.read<ImagePickerCubit>().pickImage(ImageSource.gallery);
              },
              icon: Icon(Icons.photo_library),
              label: Text(AppString.galleryPicker),
            ),
          ],
        ),
      ],
    );
  }
}
