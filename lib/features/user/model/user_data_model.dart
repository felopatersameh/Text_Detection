class UserDataModel {
  static String? userName;
  static String? userPassword;
  static String? imageLink;

  String? get name => userName;

  String? get password => userPassword;

  String? get imageUrl => imageLink;

  set name(value) => userName = value;

  set password(value) => userPassword = value;

  set imageUrl(value) => imageLink = value;
}
