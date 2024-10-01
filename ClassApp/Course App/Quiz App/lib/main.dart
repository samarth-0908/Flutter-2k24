import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the Founder of Microsoft?",
      "Options": ["Bill Gates", "Elon Musk", "Lary Page", "Steve Jobs"],
      "correctAnswer": 0,
    },
    {
      "question": "Who is the Founder of Apple?",
      "Options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
    },
    {
      "question": "Who is the Founder of Tesla?",
      "Options": ["Bill Gates", "Steve Jobs", "Lary Page", "Elon Musk"],
      "correctAnswer": 3,
    },
    {
      "question": "Who is the Founder of Google?",
      "Options": ["Bill Gates", "Elon Musk", "Lary Page", "Steve Jobs"],
      "correctAnswer": 2,
    },
    {
      "question": "Who is the Founder of Meta?",
      "Options": ["Mark Zuckerberg", "Elon Musk", "Lary Page", "Steve jobs"],
      "correctAnswer": 0,
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int currentScore = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    print(
        "------------------------ANSWERINDEX: $answerIndex ------------------------------");
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return WidgetStatePropertyAll(Colors.red);
      } else {
        return WidgetStatePropertyAll(null);
      }
    } else {
      return WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 162, 175, 238),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                Text(
                  "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 70,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 0;
                      setState(() {});
                    }
                  },
                  child: Text(
                    allQuestions[currentQuestionIndex]["Options"][0],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 1;
                      setState(() {});
                    }
                  },
                  child: Text(
                    allQuestions[currentQuestionIndex]["Options"][1],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 2;
                      setState(() {});
                    }
                  },
                  child: Text(
                    allQuestions[currentQuestionIndex]["Options"][2],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 3;
                      setState(() {});
                    }
                  },
                  child: Text(
                    allQuestions[currentQuestionIndex]["Options"][3],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (selectedAnswerIndex ==
                  allQuestions[currentQuestionIndex]["correctAnswer"]) {
                currentScore++;
                print("CURRENT SCORE: $currentScore");
              }
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }

              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue.shade900,
          child: Icon(
            Icons.forward,
            color: Color.fromARGB(255, 162, 175, 238),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 162, 175, 238),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 25),
              Image.network(
                  "https://m.media-amazon.com/images/I/81uHXYcZX6L.jpg",
                  height: 300),
              const SizedBox(height: 30),
              Text(
                "Total Score: $currentScore / ${allQuestions.length}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      );
    }
  }
}
