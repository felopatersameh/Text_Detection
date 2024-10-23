part of 'image_cubit.dart';

abstract class ImagePickerState extends Equatable {
  const ImagePickerState();

  @override
  List<Object?> get props => [];
}

class ImagePickerInitial extends ImagePickerState {}

class ImagePickerLoading extends ImagePickerState {}

class ImagePickerSuccess extends ImagePickerState {
  final File image;

  const ImagePickerSuccess({required this.image});

  @override
  List<Object?> get props => [image];
}

class ImagePickerError extends ImagePickerState {
  final String error;

  const ImagePickerError({required this.error});

  @override
  List<Object?> get props => [error];
}
