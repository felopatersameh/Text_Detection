class LogInModel {  final String email;  final String password;  LogInModel({    required this.email,    required this.password,  });  Map<String, dynamic> toMap() {    return {      'email': email,      'password': password,    };  }}