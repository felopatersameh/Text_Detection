import 'dart:io';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import '../../../../core/constant/app_constants.dart';import '../../../../core/constant/string.dart';import '../../../../core/utils/Widget/build_default_button.dart';import '../../ViewModel/image_cubit.dart';import 'image_picker.dart';class ViewImagePickerState extends StatelessWidget {  final File file;  const ViewImagePickerState({    super.key,    required this.file,  });  @override  Widget build(BuildContext context) {    return Center(      child: Column(        children: [          ImagePicker(            file: file,          ),          AppConstants.userVerticalSpace16,          ElevatedButton(            onPressed: () => context.read<ImagePickerCubit>().resetImage(),            child: Text(AppString.resetImages),          ),          AppConstants.userVerticalSpace16,          BuildCustomButton(            onPressed: () {              context.read<ImagePickerCubit>().extractText();              // extract text and save pdf and opened it            },            text: AppString.filesConfirmed,          ),        ],      ),    );  }}