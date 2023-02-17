import 'package:ana/scienceQizz/science_Questions.dart';

class physicalQuetionList {
  int _questionNumber = 0;

  final List<PhysicsQuestion> _questionBank = [
    PhysicsQuestion('A force is a push or pull upon an object resulting from the objects interaction with another object', true),
    PhysicsQuestion('', false),
    PhysicsQuestion('John exerts a force of 100 N to the right on a box resting on a rough, horizontal surface.Sarah exerts a force of 50N to the left on the box. The friction between the box and the surface is 5 N. is this answer 45N to the right', true),
    PhysicsQuestion('Work is a scalar quantity and therefore does not have a direction', true),
    PhysicsQuestion('A 220N force is applied horizontally to a box of mass 50kg which rests on a rough horizontal surface and the box moves 10m. Calculate The work done on the box by the applied force. is this answer = 2200J',true),

    PhysicsQuestion('WORK AND POWER: A 220N force is applied horizontally to a box of mass 50kg which rests on a rough horizontal surface and the box moves 10m. The kinetic friction between the surface and the box is 40N. Calculate The work done on the box by the normal force. is this answer 2J', false),

    PhysicsQuestion('A 220N force is applied horizontally to a box of mass 50kg which rests on a rough horizontal surface and the box moves 10m. The kinetic friction between the surface and the box is 40N. Calculate The work done on the box by the friction is this answer = -400J',true),

    PhysicsQuestion('Doppler Effect: An ambulance approaches an accident scene at constant velocity. The siren of the ambulance emits sound waves at a frequency of 980 Hz. A detector at the scene measures the frequency of the emitted sound waves as 1 050 Hz. is this answer = 22,67 m/s.',true),

    PhysicsQuestion('Electrical Charge: Two spheres A and B carry charges of +5 C and -7 C respectively. They are brought into contact and are then separated. is this answer = 5c',false),
    PhysicsQuestion('Organic compounds: CH3-CH2-CH2-CH2-C≡C-CH-CH3-CH3 is this the answer 2-methyloct-3-yne',true),
    PhysicsQuestion('Organic compounds: C3H7COC2H5 i this the answer butanal', true),

    // PhysicsQuestion('',true),
    // PhysicsQuestion('',true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].physicalQuetionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].physicalAnswerText;
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
