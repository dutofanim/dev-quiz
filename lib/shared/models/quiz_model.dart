import 'dart:convert';

import 'package:devquiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get parse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito"
      }[this]!;
}

class QuizModel {
  final String title;
  final String? imagem;
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

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imagem': imagem,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionsAwnsered': questionsAwnsered,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      imagem: map['imagem'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionsAwnsered: map['questionsAwnsered'],
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
