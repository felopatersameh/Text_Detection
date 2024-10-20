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
  static List<FileElement> files = [];

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
  final DateTime createdAt = DateTime.now();
  DateTime? removedAt;
  bool favorite;
  bool archive;
  QuestionsGenerated questionsGenerated = QuestionsGenerated();

  FileElement({
    required this.title,
    required this.fileLink,
    this.favorite = false,
    this.archive = false,
  });
}

class QuestionsGenerated {
  final List<String> _allQuestions = [];
  final List<String> _allAnswers = [];

  List<String> get allQuestions => _allQuestions;

  List<String> get allAnswers => _allAnswers;

  QuestionsGenerated();

// Use these methods instead of setters to ensure that each question has an answer
  void addQuestion({
    required String question,
    required String answer,
  }) {
    _allQuestions.add(question);
    _allAnswers.add(answer);
  }

  void addAllQuestion({
    required List<String> questions,
    required List<String> answers,
  }) {
    /// For test only
    if (questions.length != answers.length) {
      print("-----------------------------------------------");
      print("------------ Check Your Code!! ----------------");
      print("-----------------------------------------------");
      return;
    }
    _allQuestions.addAll(questions);
    _allAnswers.addAll(answers);
  }
}
