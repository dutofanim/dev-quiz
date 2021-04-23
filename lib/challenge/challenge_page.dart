import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';
import 'widgets/next_button/next_button_widget.dart';
import 'widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({Key? key, required this.questions}) : super(key: key); 

  @override
  _ChallengePageState createState() => _ChallengePageState(questions);
}

class _ChallengePageState extends State<ChallengePage> {
  final List<QuestionModel> questions;

  _ChallengePageState(this.questions);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              QuestionIndicatorWidget(),
            ],
          ),
        ),
      ),
      body: QuizWidget(
        question: questions[0],
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Pular",
                onTap: () {},
              )),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: NextButtonWidget.darkGreen(
                label: "Confirmar",
                onTap: () {},
              )),
            ],
          ),
        ),
      ),
    );
  }
}
