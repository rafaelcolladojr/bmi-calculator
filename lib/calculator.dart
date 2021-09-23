import 'dart:math';

class Calculator {
  double _bmi = 0;

  void calculateBMI(int weight, int height) {
    _bmi = (weight / pow(height, 2)) * 703;
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getBMILabel() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getBMIMessage() {
    if (_bmi > 25) {
      return 'You have a heigher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
