import 'package:flutter/cupertino.dart';
import './question.dart';
import './response.dart';

class Questionary extends StatelessWidget {
  final int questionId;
  final List<Map<String, Object>> questions;
  final void Function(int) onAnswer;

  Questionary({
    @required this.questionId,
    @required this.questions,
    @required this.onAnswer,
  });

  bool get hasQuestion {
    return questionId < questions.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> responses =
        hasQuestion ? questions[questionId]['response'] : null;
    return Column(
      children: <Widget>[
        Question(questions[questionId]['question']),
        ...responses
            .map((text) => Response(text['text'], () => onAnswer(text['nota'])))
      ],
    );
  }
}
