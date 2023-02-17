import 'question.dart';

class RandomQuizQuestionList {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Coloumb’s Law is the electrostatic force of attraction or repulsion between two charged objects is directly proportional to the product of the charges and inversely proportional to the square of the distance between their centres.', true),
    Question('is sqr(3) an non real number ', false),
    Question('is a lion a big five animal', true),
    Question('(3+3/3) = 2', false),
    Question('power(3,9) is this the correct answer 19683', true),
    Question('It is illegal to pee in the Ocean.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
    Question('Google was originally called \"Backrub\".', true),
    // Question('', true),
    // Question('', false),
    // Question('', true),
    
    // Question('', true),
    // Question('', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].rondomTextQuestions;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].rondomTextAnswer;
  }



  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {


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
