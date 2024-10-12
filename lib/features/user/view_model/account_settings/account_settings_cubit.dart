import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:textdetection/features/user/model/user_data_model.dart';

part 'account_settings_state.dart';

class AccountSettingsCubit extends Cubit<AccountSettingsState> {
  AccountSettingsCubit() : super(AccountSettingsInitial());

  void initializeUserData() {
    /// TODO get data from firebase
    UserDataModel.name;
    UserDataModel.email;
    UserDataModel.password;
    UserDataModel.imageUrl;

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
    UserDataModel.imageUrl = newImageUrl;
    emit(ImageChanged());
  }
}
