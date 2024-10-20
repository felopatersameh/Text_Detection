import 'package:bloc/bloc.dart';
import '../../model/user_data_model.dart';

part 'account_settings_state.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsState> {
  AccountSettingsCubit() : super(AccountSettingsInitial());

  void initializeUserData() {
    emit(InitializedUser());
  }

  void changeUserName(String newName) {
    UserDataModel.name = newName;
    emit(UserNameChanged());
  }

  void changeEmail(String newEmail) {
    UserDataModel.email = newEmail;
    emit(EmailChanged());
  }

  void changePassword(String newPassword) {
    UserDataModel.password = newPassword;
    emit(PasswordChanged());
  }

  void changeImage(String newImageUrl) {
    UserDataModel.photo = newImageUrl;
    emit(ImageChanged());
  }
}
