part of 'account_settings_cubit.dart';

@immutable
sealed class AccountSettingsState {
  String name = UserDataModel.name;
  String email = UserDataModel.email;
  String password = UserDataModel.password;
  String imageUrl = UserDataModel.imageUrl;
}

final class AccountSettingsInitial extends AccountSettingsState {}

final class InitializedUser extends AccountSettingsState {
  // String name = UserDataModel.name;
  // String email = UserDataModel.email;
  // String password = UserDataModel.password;
  // String imageUrl = UserDataModel.imageUrl;
}

final class UserNameChanged extends AccountSettingsState {}

final class EmailChanged extends AccountSettingsState {}

final class PasswordChanged extends AccountSettingsState {}

final class ImageChanged extends AccountSettingsState {}
