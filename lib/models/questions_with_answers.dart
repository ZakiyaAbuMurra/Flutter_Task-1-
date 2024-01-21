class QuestionwithAnswer {
  final String questions;
  final String correctAnswer;
  final List<String> answers;

  QuestionwithAnswer({
    required this.questions,
    required this.correctAnswer,
    required this.answers,
  });
}

List<QuestionwithAnswer> questionsWithAnswer = [
  QuestionwithAnswer(
    questions: 'What is your favorite color?',
    answers: [
      'Red',
      'Blue',
      'Green',
    ],
    correctAnswer: 'Red',
  ),
  QuestionwithAnswer(
    questions: 'Which of the following is not a data type in Dart?',
    answers: [
      'Integer',
      'Float',
      'Boolean',
    ],
    correctAnswer: 'Float',
  ),
  QuestionwithAnswer(
    questions: 'Who\'s your favorite instructor ? ',
    answers: [
      'Tarek',
      'Tarek',
      'Tarek',
    ],
    correctAnswer: 'Tarek',
  ),
];
