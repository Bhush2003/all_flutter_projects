import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return QuizApp();
  }
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizApp();
}

class MoldofQuestion {
  final String? question;
  final List<String>? option;
  final int? ans;
  final String? explanation;
  const MoldofQuestion(
      {this.question, this.option, this.ans, this.explanation});
}

class _QuizApp extends State<QuizApp> {
  int questionNo = 1;
  int questionIndex = 0;
  List questionAndOption = [
    const MoldofQuestion(
        question: "What is the capital of France?",
        option: ["Berlin", "London", "Madrid", "Paris"],
        ans: 3,
        explanation:
            "The correct answer is Paris. Paris is the capital city of France, known for its iconic landmarks such as the Eiffel Tower and the Louvre Museum. Berlin is the capital of Germany, London is the capital of the United Kingdom, and Madrid is the capital of Spain. Therefore, the capital of France is Paris."),
    const MoldofQuestion(
      question: "Which planet is known as the 'Red Planet'?",
      option: ["Venus", " Mars", "Jupiter", "Saturn"],
      ans: 1,
      explanation:
          "The correct answer is Mars. Mars is often referred to as the 'Red Planet' due to its reddish appearance, which is caused by iron oxide, or rust, on its surface. Venus, Jupiter, and Saturn are also planets in our solar system, but they are not commonly known as the 'Red Planet.'",
    ),
    const MoldofQuestion(
      question: " What is the largest mammal on Earth?",
      option: ["Elephant", " Blue Whale", "Giraffe", "Polar Bear"],
      ans: 1,
      explanation:
          "The correct answer is B) Blue Whale. The blue whale holds the title for being the largest mammal on Earth, even larger than the largest dinosaurs. While elephants, giraffes, and polar bears are sizable mammals, none surpass the sheer size of the blue whale.",
    ),
    const MoldofQuestion(
        question: "Which element is represented by the chemical symbol 'O'?",
        option: ["Oxygen", " Gold", "Silver", "Iron"],
        ans: 0,
        explanation:
            "The correct answer is Oxygen. The chemical symbol 'O' represents the element oxygen. Gold is represented by 'Au,' silver by 'Ag,' and iron by 'Fe.'"),
    const MoldofQuestion(
      question: "What is the powerhouse of the cell?",
      option: ["Nucleus", "Mitochondria", "Ribosome", " Endoplasmic Reticulum"],
      ans: 1,
      explanation:
          "The correct answer is B) Mitochondria. Mitochondria are often referred to as the powerhouse of the cell because they play a crucial role in generating energy (ATP) through cellular respiration. The nucleus, ribosomes, and endoplasmic reticulum have different functions within the cell.",
    ),
  ];
  MaterialStateProperty<Color> OptionColorChange(int option){
    if(){
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text("Question $questionNo/${questionAndOption.length}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text(
                  questionAndOption[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "A) " + questionAndOption[questionIndex].option[0],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "B) " + questionAndOption[questionIndex].option[1],
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    "C) " + questionAndOption[questionIndex].option[2],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ButtonStyle(

                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "D) " + questionAndOption[questionIndex].option[3],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.next_plan),),
      ),
    );
  }
}
