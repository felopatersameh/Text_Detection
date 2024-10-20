import '../../../generated/assets.dart';

class UserDataModel {
  static String? name;
  static String? email;
  static String? password;
  static String photo = Assets.pngProfile;
  static String _id = '';
  static DateTime? createdAt;
  static DateTime? updatedAt;
  static String _accessToken = '';
  static String _refreshToken = '';
  static List<FileElement>? files;

  // Private Constructor
  // To prevent creating more than one user
  UserDataModel._();

  static String get id => _id;

  static String get accessToken => _accessToken;

  static String get refreshToken => _refreshToken;

  static set id(value) => _id;

  static set accessToken(value) => _accessToken = value;

  static set refreshToken(value) => _refreshToken = value;
}

class FileElement {
  String title;
  String fileLink;

  // "now()" will be executed at creating the instance
  DateTime? createdAt = DateTime.now();
  DateTime? removedAt;
  bool favorite;
  bool archive;
  List<QuestionsGenerated>? questionsGenerated;

  FileElement({
    required this.title,
    required this.fileLink,
    this.favorite = false,
    this.archive = false,
    this.questionsGenerated,
  });
}

class QuestionsGenerated {
  final List<String> _questions = [];
  final List<String> _answer = [];

  QuestionsGenerated();

  void addQuestion({required String question, required String answer}) {
    _questions.add(question);
    _answer.add(answer);
  }

  void addAllQuestion(
      {required List<String> questions, required List<String> answers}) {
    _questions.addAll(questions);
    _answer.addAll(answers);
  }
}
