import '../../../generated/assets.dart';

class UserDataModel {
  static String? _name;
  static String? _email;
  static String? _password;
  static String _imageUrl = Assets.pngProfile;

  // Private Constructor
  UserDataModel._();

  static String get name => _name!;

  static String get email => _email!;

  static String get password => _password!;

  static String get imageUrl => _imageUrl;

  static set name(value) => _name = value;

  static set email(value) => _email = value;

  static set password(value) => _password = value;

  static set imageUrl(value) => _imageUrl = value;
}
