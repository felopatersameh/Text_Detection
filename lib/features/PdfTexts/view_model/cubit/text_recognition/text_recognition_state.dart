part of 'text_recognition_cubit.dart';

abstract class TextRecognitionState extends Equatable {
  const TextRecognitionState();

  @override
  List<Object?> get props => [];
}

class TextRecognitionInitial extends TextRecognitionState {}

class TextRecognitionLoading extends TextRecognitionState {}

class TextRecognitionSuccess extends TextRecognitionState {
  final String recognizedText;

  const TextRecognitionSuccess(this.recognizedText);

  @override
  List<Object?> get props => [recognizedText];
}

class TextRecognitionError extends TextRecognitionState {
  final String error;

  const TextRecognitionError(this.error);

  @override
  List<Object?> get props => [error];
}
