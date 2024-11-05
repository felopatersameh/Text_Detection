import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'view_image_picker_state.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/string.dart';

import '../../../../core/utils/Widget/error_message.dart';
import '../../../../core/utils/Widget/widget_loading.dart';
import '../../../auth/view/widgets/back_arrow.dart';
import '../../ViewModel/image_cubit.dart';
import 'custom_image_picker_source.dart';

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context, title: AppString.imagePicker),
      body: CustomScrollView(
        shrinkWrap: true,
        physics: const RangeMaintainingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: _bodyScreen(),
          ),
        ]
      ),
    );
  }

  Padding _bodyScreen() {
    return Padding(
            padding: AppConstants.customFormPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ImagePickerCubit, ImagePickerState>(
                  builder: (context, state) {
                    if (state is ImagePickerLoading) {
                      return LoadingWidget();
                    }
                    if (state is ImagePickerSuccess) {
                      return ViewImagePickerState(
                        file: state.image,
                      );
                    }
                    if (state is ImagePickerError) {
                      return ErrorMessages(
                        text: state.error,
                      );
                    }
                    return CustomImagePickerSource();
                  },
                ),
              ],
            ),
          );
  }
}




