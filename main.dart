import 'dart:io';
import 'dart:math';

class Question {
  String text;
  List<dynamic> options;
  int correctOptionIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctOptionIndex,
  });
}

class Quiz {
  List<dynamic> questions;
  List<dynamic> randList = [];
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  Quiz({required this.questions, required int numberOfQuestions}) {
    randList = generateRandomQuestion(questions.length, numberOfQuestions);
  }

  generateRandomQuestion(int max, int count) {
    var random = Random();
    var indices = List<dynamic>.generate(max, (index) => index);
    indices.shuffle(random);
    return indices.sublist(0, count);
  }

  submitAnswer(int selectedOptionIndex) {
    if (!isQuizFinished() &&
        selectedOptionIndex ==
            questions[randList[currentQuestionIndex]].correctOptionIndex) {
      correctAnswers++;
    }
    currentQuestionIndex++;
  }

  isQuizFinished() {
    return currentQuestionIndex >= randList.length;
  }

  restartQuiz() {
    currentQuestionIndex = 0;
    correctAnswers = 0;
    randList.shuffle();
  }
}

void main() {
  print("QUIZ APP");
  print("______________________");
  final Map<dynamic, dynamic> questionMap = {
    1: Question(
      text: " Which animal is known as the 'Ship of the Desert",
      options: [
        "Option A :  camel",
        "Option B : cow",
        "Option C : sheep",
        "Option D : goat"
      ],
      correctOptionIndex: 0,
    ),
    2: Question(
      text: "How many days are there in a week",
      options: ["Option A : 7", "Option B : 6", "Option C : 3", "Option D : 8"],
      correctOptionIndex: 0,
    ),
    3: Question(
      text: "How many hours are there in a day",
      options: [
        "Option A : 18",
        "Option B : 21",
        "Option C : 23",
        "Option D : 24"
      ],
      correctOptionIndex: 3,
    ),
    4: Question(
      text: " How many letters are there in the English alphabet?",
      options: [
        "Option A : 20",
        "Option B : 30",
        "Option C : 26",
        "Option D : 25"
      ],
      correctOptionIndex: 2,
    ),
    5: Question(
      text: "Rainbow consist of how many colours",
      options: [
        "Option A : 3",
        "Option B : 14",
        "Option C : 7",
        "Option D : 5"
      ],
      correctOptionIndex: 2,
    ),
    6: Question(
      text: "How many days are there in a year",
      options: [
        "Option A : 360",
        "Option B : 300",
        "Option C : 365",
        "Option D : 350"
      ],
      correctOptionIndex: 2,
    ),
    7: Question(
      text: "How many minutes are there in an hour",
      options: [
        "Option A : 60 ",
        "Option B : 50",
        "Option C : 100",
        "Option D : 30"
      ],
      correctOptionIndex: 0,
    ),
    8: Question(
      text: "How many seconds are there in a minute",
      options: [
        "Option A : 100",
        "Option B : 60",
        "Option C : 50",
        "Option D : 30"
      ],
      correctOptionIndex: 1,
    ),
    9: Question(
      text: "How many seconds make one hour",
      options: [
        "Option A : 3650",
        "Option B : 3600",
        "Option C : 3000",
        "Option D : 6000"
      ],
      correctOptionIndex: 1,
    ),
    10: Question(
      text: " How many consonants are there in the English alphabet?",
      options: [
        "Option A : 22",
        "Option B : 21",
        "Option C : 40",
        "Option D : 23"
      ],
      correctOptionIndex: 1,
    ),
    11: Question(
      text: "How many vowels are there in the English alphabet",
      options: ["Option A : 5", "Option B : 8", "Option C : 4", "Option D : 7"],
      correctOptionIndex: 0,
    ),
    12: Question(
      text: "Which animal is known as the king of the jungle",
      options: [
        "Option A : lion",
        "Option B : elephant",
        "Option C : tiger",
        "Option D : horse"
      ],
      correctOptionIndex: 0,
    ),
    13: Question(
      text: "Which is the smallest month of the year",
      options: [
        "Option A : october",
        "Option B : april",
        "Option C : february",
        "Option D : march"
      ],
      correctOptionIndex: 2,
    ),
    14: Question(
      text: "How many continents are there in the world",
      options: ["Option A : 7", "Option B : 3", "Option C : 6", "Option D : 8"],
      correctOptionIndex: 0,
    ),
    15: Question(
      text: "Name the biggest continent in the world",
      options: [
        "Option A : south america",
        "Option B : europe",
        "Option C : africa",
        "Option D : asia"
      ],
      correctOptionIndex: 3,
    ),
    16: Question(
      text: "Sun rises in the.....",
      options: [
        "Option A : east",
        "Option B : west",
        "Option C : north",
        "Option D : south"
      ],
      correctOptionIndex: 0,
    ),
    17: Question(
      text: "How many sides are there in a triangle?",
      options: ["Option A : 5", "Option B : 0", "Option C : 7", "Option D : 3"],
      correctOptionIndex: 3,
    ),
    18: Question(
      text: " Name the largest planet of our Solar System",
      options: [
        "Option A : neptune",
        "Option B : mars",
        "Option C : jupiter",
        "Option D : earth"
      ],
      correctOptionIndex: 2,
    ),
    19: Question(
      text: "How many years are there in one Millenium?",
      options: [
        "Option A : 999",
        "Option B : 1000",
        "Option C : 2000",
        "Option D : 5000"
      ],
      correctOptionIndex: 1,
    ),
    20: Question(
      text: " Name the planet nearest to the Earth?",
      options: [
        "Option A : neptune",
        "Option B : mars",
        "Option C : jupiter",
        "Option D : mercury"
      ],
      correctOptionIndex: 3,
    ),
    21: Question(
      text: "Which continent is known as the Dark continent",
      options: [
        "Option A : south america",
        "Option B : europe",
        "Option C : africa",
        "Option D : asia"
      ],
      correctOptionIndex: 2,
    ),
    22: Question(
      text: "Name the planet known as the Red Plane",
      options: [
        "Option A : neptune",
        "Option B : mars",
        "Option C : jupiter",
        "Option D : mercury"
      ],
      correctOptionIndex: 1,
    ),
    23: Question(
      text: "The Second largest city of Pakistan is _______",
      options: [
        "Option A : quetta",
        "Option B : karachi",
        "Option C : lahore",
        "Option D : islamabad"
      ],
      correctOptionIndex: 2,
    ),
    24: Question(
      text: "The First largest city of Pakistan is _______",
      options: [
        "Option A : quetta",
        "Option B : karachi",
        "Option C : lahore",
        "Option D : islamabad"
      ],
      correctOptionIndex: 1,
    ),
    25: Question(
      text: "USA’s second biggest city is ____________",
      options: [
        "Option A : los angeles",
        "Option B : new york",
        "Option C : seattle",
        "Option D : atlanta"
      ],
      correctOptionIndex: 0,
    ),
    26: Question(
      text: "SUPARCO was founded in __________",
      options: [
        "Option A : 1961",
        "Option B : 1976",
        "Option C : 1980",
        "Option D : 1970"
      ],
      correctOptionIndex: 0,
    ),
    27: Question(
      text: "Taka is the Currency of ",
      options: [
        "Option A : india",
        "Option B : england",
        "Option C : bangladesh",
        "Option D : russia"
      ],
      correctOptionIndex: 2,
    ),
    28: Question(
      text: "The Earth’s Oceanic water is divided in __________ oceans.",
      options: ["Option A : 5", "Option B : 7", "Option C : 9", "Option D : 8"],
      correctOptionIndex: 0,
    ),
    29: Question(
      text: "The Smallest Continent (by Area) of the World is __________.",
      options: [
        "Option A : india",
        "Option B : england",
        "Option C : australia",
        "Option D : russia"
      ],
      correctOptionIndex: 2,
    ),
    30: Question(
      text: "The Earth’s Smallest ocean is __________ ",
      options: [
        "Option A : arctic",
        "Option B : atlantic",
        "Option C : pacific",
        "Option D : indian"
      ],
      correctOptionIndex: 0,
    ),
    31: Question(
      text: "The Earth’s second Largest ocean is __________ ?",
      options: [
        " Option A : arctic",
        "Option B : atlantic",
        "Option C : pacific",
        "Option D : indian"
      ],
      correctOptionIndex: 1,
    ),
    32: Question(
      text: "The Earth’s Largest ocean is __________ ?",
      options: [
        " Option A : arctic",
        "Option B : atlantic",
        "Option C : pacific",
        "Option D : indian"
      ],
      correctOptionIndex: 2,
    ),
    33: Question(
      text: "Largest Arms Importer of the World is",
      options: [
        "Option A : india",
        "Option B : saudi arabia",
        "Option C : australia",
        "Option D : russia"
      ],
      correctOptionIndex: 1,
    ),
    34: Question(
      text: "The largest peninsula in the world is",
      options: [
        "Option A : arfica",
        "Option B : arabia",
        "Option C : australia",
        "Option D : asia"
      ],
      correctOptionIndex: 0,
    ),
    35: Question(
      text:
          "Which one of the following countries made an exit from Kyoto Protocol.",
      options: [
        "Option A : china",
        "Option B : india",
        "Option C : australia",
        "Option D : canada"
      ],
      correctOptionIndex: 0,
    ),
    36: Question(
      text:
          "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
      options: [
        "Option A : arfica",
        "Option B : arabia",
        "Option C : australia",
        "Option D : asia"
      ],
      correctOptionIndex: 0,
    ),
    37: Question(
      text: "Which Country is the Second largest Arms Exporter of the World",
      options: [
        "Option A : india",
        "Option B : saudi arabia",
        "Option C : australia",
        "Option D : russia"
      ],
      correctOptionIndex: 3,
    ),
    38: Question(
      text: "The OIC was founded in __________ .",
      options: [
        "Option A : india",
        "Option B : saudi arabia",
        "Option C : morocco",
        "Option D : russia"
      ],
      correctOptionIndex: 0,
    ),
    39: Question(
      text: "ITAR-TASS is the news agency of which country",
      options: [
        "Option A : india",
        "Option B : saudi arabia",
        "Option C : australia",
        "Option D : russia"
      ],
      correctOptionIndex: 3,
    ),
    40: Question(
      text: "Headquarter of Pakistan NAVY is in ",
      options: [
        "Option A : quetta",
        "Option B : karachi",
        "Option C : lahore",
        "Option D : islamabad"
      ],
      correctOptionIndex: 3,
    ),
    41: Question(
      text: "Where is the tomb of Mughal Emperor Jahangir",
      options: [
        "Option A : quetta",
        "Option B : karachi",
        "Option C : lahore",
        "Option D : islamabad"
      ],
      correctOptionIndex: 2,
    ),
    42: Question(
      text: "Which continent comprises the land around the South Pole",
      options: [
        "Option A : antartica",
        "Option B : europe",
        "Option C : africa",
        "Option D : asia"
      ],
      correctOptionIndex: 0,
    ),
    43: Question(
      text: "Second most populous country in the world is ___________?",
      options: [
        "Option A : india",
        "Option B : saudi arabia",
        "Option C : pakistan",
        "Option D : russia"
      ],
      correctOptionIndex: 0,
    ),
    44: Question(
      text:
          "The 2017 Heart of Asia – Istanbul Ministerial Process will be hosted by which country?",
      options: [
        "Option A : india",
        "Option B : azerbaijan",
        "Option C : pakistan",
        "Option D : russia"
      ],
      correctOptionIndex: 1,
    ),
    45: Question(
      text:
          "The Largest flag ever made,weight at 5 ton with 44 miles of Thread,certified by Guinness world record belong to which country",
      options: [
        "Option A : india",
        "Option B : romania",
        "Option C : pakistan",
        "Option D : russia"
      ],
      correctOptionIndex: 1,
    ),
    46: Question(
      text: "Asian Men’s Hockey Champions Trophy-2016 held in",
      options: [
        "Option A : india",
        "Option B : malaysia",
        "Option C : netherland",
        "Option D : russia"
      ],
      correctOptionIndex: 1,
    ),
    47: Question(
      text:
          "The headquarter of organizations for the prohibition of chemical weapons?",
      options: [
        "Option A : india",
        "Option B : malaysia",
        "Option C : netherland",
        "Option D : russia"
      ],
      correctOptionIndex: 2,
    ),
    48: Question(
      text: "Highest flag of South Asia is In_________",
      options: [
        "Option A : india",
        "Option B : azerbaijan",
        "Option C : pakistan",
        "Option D : china"
      ],
      correctOptionIndex: 2,
    ),
    49: Question(
      text: "French revolution began in:",
      options: [
        "Option A : 1789",
        "Option B : 1788",
        "Option C : 1790",
        "Option D : 1793"
      ],
      correctOptionIndex: 0,
    ),
    50: Question(
      text:
          "According to the latest research on smoking comsumption in Asia 2017 _______________ is at the top of the list",
      options: [
        "Option A : india",
        "Option B : azerbaijan",
        "Option C : pakistan",
        "Option D : china"
      ],
      correctOptionIndex: 2,
    ),
  };
  var randList = generateRandomQuestion(questionMap.length,20);

  final List<dynamic> questions = randList
      .map((index) => questionMap[index + 1]!)
      .toList(); // Retrieve questions from the map

  final quiz = Quiz(questions: questions, numberOfQuestions: 20);

  while (!quiz.isQuizFinished()) {
    final currentQuestion = quiz.questions[quiz.currentQuestionIndex];

    print(currentQuestion.text);
    for (int i = 0; i < currentQuestion.options.length; i++) {
      print("${String.fromCharCode(65 + i)}. ${currentQuestion.options[i]}");
    }

    stdout.write("Your answer (A/B/C/D): ");
    final userAnswer = stdin.readLineSync();

    if (userAnswer != null && userAnswer.isNotEmpty) {
      final selectedOptionIndex = userAnswer.codeUnitAt(0) - 65;
      quiz.submitAnswer(selectedOptionIndex);
    } else {
      print("Invalid input. Skipping to the next question.");
    }
  }

  final percentage = (quiz.correctAnswers / randList.length) * 100;
  print("Total Correct Answers: ${quiz.correctAnswers}");
  print("Percentage: $percentage%");

  if (percentage > 50) {
    print("Congratulations!");
  }

  stdout.write("Do you want to restart the quiz? (yes/no): ");
  final restartAnswer = stdin.readLineSync();

  if (restartAnswer?.toLowerCase() == "yes") {
    quiz.restartQuiz();
    main(); // Restart the quiz
  } else {
    print("Goodbye!");
  }
}

  generateRandomQuestion(int max, int count) {
    var random = Random();
    var indices = List<dynamic>.generate(max, (index) => index);
    indices.shuffle(random);
    return indices.sublist(0, count);
  }