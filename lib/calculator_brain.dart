import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if(_bmi >= 25){
      return 'overweight';
    } else if(_bmi > 18.5){
      return 'normal';
    } else{
      return 'underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25){
      return 'You have higher than normal body weight. Try to exercise more';
    } else if(_bmi > 18.5){
      return 'You have a normal body weight. Good Job!';
    } else{
      return 'You have lower than normal body weight. Try to eat more';
    }
  }

}