part of 'upload_cubit.dart';

@immutable
sealed class UploadState {}

class UploadInitial extends UploadState {}
class UploadComplete extends UploadState {}
class UploadCancelled extends UploadState {}
class UploadInProgress extends UploadState {
  final double percent;

  UploadInProgress(this.percent);
}

