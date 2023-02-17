

import 'math_Question.dart';

class QuestionsAnswerQuizz {
  int _questionNumber = 0;

  final List<MathQuestions> _questionBank = [
    MathQuestions('(2 + 2 / 2) = 3', true),
    MathQuestions('solve for X: pow(2,x) = 8 the answer is  = 2 ', false),
    MathQuestions('Is the following numbers pow(2,3)*3 prime factor of 24 .', true),
    MathQuestions('Former Clifton buys a drone for R250 000 which depreciates by 20% per  year using the compound depreciation method. what is the depreciated value of the drone after 5 year.. is this the answer = R81 920', true),
    MathQuestions('Simplify: is pow(x,-1) / pow(y,-1) = (y+x / xy)', true),
    MathQuestions('Simplify: the following pow(27,3-2x).pow(9,x-1) / pow(81,2-x) = pow(3,-1)', true),
    MathQuestions('solve for X: pow(5,2x+1)- pow(125,2x-3) = 0 the answer is x=(5/2)',false),
    MathQuestions('is a square root of sqrt(-27) a non-real number)',true),
    MathQuestions('Quadratic equations : pow(x,2) -7x + 10 =0 is the answer (x = -5) and (x = -2)',false),
    MathQuestions('factorise an expression: pow(9x,2)-pow(6xy,2) is the answers (x+1)(3y-2) ',true),
    MathQuestions('Quadratic equations : pow(x,2) -7x + 10 =0 is the answer (x = 5) and (x = 2)' , true),
    // MathQuestions('',true),
    // MathQuestions('',true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }



  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //

      // print('Now returning true');
      return true;

    } else {
      return false;
    }
  }


  void reset() {
    _questionNumber = 0;
  }
}
