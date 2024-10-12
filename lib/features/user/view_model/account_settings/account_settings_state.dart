part of 'account_settings_cubit.dart';

@immutable
sealed class AccountSettingsState {}

final class AccountSettingsInitial extends AccountSettingsState {}

final class UserNameChanged extends AccountSettingsState {}

final class EmailChanged extends AccountSettingsState {}

final class PasswordChanged extends AccountSettingsState {}

final class ImageChanged extends AccountSettingsState {}
