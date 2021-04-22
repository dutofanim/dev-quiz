import 'package:devquiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final String imagem;
  final List<QuestionModel> questions;
  final int questionsAwnsered;
  final Level level;

  QuizModel({
    required this.title,
    required this.imagem,
    required this.questions,
    this.questionsAwnsered = 0,
    required this.level,
  });
}
