import 'package:ana/randomQueston/quiz_brain.dart';
import 'package:ana/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


QuizBrain quizBrain = QuizBrain();

//void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();



    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        //TODO Step 4 Part C - reset the questionNumber,

        quizBrain.reset();


        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                child: const Text('True',
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 8, 8),
                      fontSize: 20.0,
                    )),
              )),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                child: const Text('False',
                    style: TextStyle(
                      color: Color.fromARGB(255, 236, 8, 8),
                      fontSize: 20.0,

                    )),
              )),
        ),
        Expanded(child: ElevatedButton(onPressed: (){


          Navigator.push(context, MaterialPageRoute(builder:(c)=> const MySplashScreen()));


        },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey
          ),
          child: const Text("Quite"),
        ),
        ),
        Row(
          children: scoreKeeper,
          
        )
      ],
    );
  }
}
