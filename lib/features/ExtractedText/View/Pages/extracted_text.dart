import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/Config/Route/app_route.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../core/constant/string.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/utils/Widget/build_default_button.dart';
import '../../../auth/view/widgets/back_arrow.dart';
import '../../ViewModel/extracted_text_cubit.dart';

class ExtractedText extends StatelessWidget {
  final String text;
  final File fileSelected;

  const ExtractedText(
      {super.key, required this.text, required this.fileSelected});

  @override
  Widget build(BuildContext context) {
    // final String recognizedText =
    //     ModalRoute.of(context)?.settings.arguments as String? ?? '';
    return Scaffold(
      appBar: backArrow(
        context,
        title: AppString.extractedTextHeader,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.copy),
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //         const SnackBar(content: Text('Text copied to clipboard')),
        //       );
        //     },
        //   ),
        // ],
      ),
      body: BlocProvider(
        create: (context) => ExtractedTextCubit(),
        child: BlocConsumer<ExtractedTextCubit, ExtractedTextState>(
          listener: (context, state) {
            if (state is ExtractedTextSuccess) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.mainScreen,
                (route) => false,
              );
            }
          },
          builder: (context, state) {
            return CustomScrollView(
              shrinkWrap: true,
              physics: RangeMaintainingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45.0, vertical: 40.0),
                      child: Text(
                          "from ${(fileSelected.path.split('/').last).split('.').first.toUpperCase()}",
                          style: AppTextStyles.style16W500()),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45.0, vertical: 50.0),
                      child: Container(
                        width: 70.sw,
                        decoration: BoxDecoration(
                          color: AppColors.white, // Background color
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        // Padding for the icon
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.style14(),
                          maxLines: text.length,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  fillOverscroll: true,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45.0, vertical: 40.0),
                      child: BuildCustomButton(
                        onPressed: () {
                          context.read<ExtractedTextCubit>().generateQuestion(
                              text: text, fileSelected: fileSelected);
                          // extract text and save pdf and opened it
                        },
                        text: AppString.extractedTextHeader,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
