part of 'file_cubit.dart';

@immutable
sealed class FileState {}

class FileInitial extends FileState {}
class FileSuccess extends FileState {
  final List<String> files;
  final String? message;

  FileSuccess(this.files, {this.message});
}
class FileFailure extends FileState {
  final String message;

  FileFailure(this.message);
}


