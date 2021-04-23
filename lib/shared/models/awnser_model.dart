import 'dart:convert';

class AwnserModel {
  final String title;
  final bool rightAwnser;

  AwnserModel({
    required this.title,
    this.rightAwnser = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'rightAwnser': rightAwnser,
    };
  }

  factory AwnserModel.fromMap(Map<String, dynamic> map) {
    return AwnserModel(
      title: map['title'],
      rightAwnser: map['rightAwnser'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AwnserModel.fromJson(String source) => AwnserModel.fromMap(json.decode(source));
}
