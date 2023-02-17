import 'package:ana/randomQueston/randomQuestionList.dart';
import 'package:ana/randomQueston/random_splash_screen.dart';
import 'package:ana/selectQizz.dart';
import 'package:ana/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


RandomQuizQuestionList randonQuizzList = RandomQuizQuestionList();


class RandomQuiz extends StatelessWidget {
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
    bool correctAnswer = randonQuizzList.getCorrectAnswer();



    setState(() {
      if (randonQuizzList.isFinished() == true) {


        Alert(
          context: context,
          title: 'Done!',
          desc: 'level 1 done!',
        ).show();


        randonQuizzList.reset();


        scoreKeeper = [];
      }

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
        randonQuizzList.nextQuestion();
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
                randonQuizzList.getQuestionText(),
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
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
              )),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                child: const Text('False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

                    )
                ),
              )
          ),
        ),
        Expanded(child: ElevatedButton(onPressed: (){


          Navigator.push(context, MaterialPageRoute(builder:(c)=>  const MySplashScreen()));


        },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey
          ),
          child: const Text("Quite", style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ) ),
        ),
        ),
        Row(
          children: scoreKeeper,
          
        )
      ],
    );
  }
}
