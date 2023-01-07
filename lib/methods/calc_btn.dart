import 'dart:math';

class CalculateBMI {
  final int height;
  final int weight;

  CalculateBMI({
    required this.height,
    required this.weight,
  });

  late double _bmi;

  String calcBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return " Аз салмактуу";
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return "Нормалдуу";
    } else if (_bmi > 24.9) {
      return "Ашыкча салмактуу";
    } else {
      return "Программада ката бар";
    }
  }

  String feedback() {
    if (_bmi >= 18.5 && _bmi <= 24.9) {
      return "Нормалдуу";
    } else if (_bmi > 24.5) {
      return "Сиздин салмагыныз ашыкча.";
    } else {
      return "Сиздин салмагыныз аз";
    }
  }
}
