import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_with_answers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required Text title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0;
  int score = 0;

  void answerQuestion(String selectedAnswer) {
    if (selectedAnswer == questionsWithAnswer[questionIndex].correctAnswer) {
      debugPrint('Correct Answer');
      score++;
    } else {
      debugPrint('Wrong Answer');
    }
    setState(() {
      if (questionIndex <= questionsWithAnswer.length - 1) {
        questionIndex++;
      } else {
        questionIndex = 0;
      }
      debugPrint('Question Index: $questionIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz App"),
      ),
      body: Center(
        child: questionIndex == 3
            ? Text(
                'Congratulations ${score}/${questionsWithAnswer.length}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Text(
                      questionsWithAnswer[questionIndex].questions,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    children: questionsWithAnswer[questionIndex]
                        .answers
                        .map(
                          (answer) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: answerButton(
                              text: answer,
                              onPressed: () => answerQuestion(answer),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
      ),
    );
  }

  Widget answerButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
