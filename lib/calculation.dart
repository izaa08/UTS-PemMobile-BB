import 'dart:math';

class Calculation {
  Calculation({required this.height, required this.weight});
  int height;
  int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'kegemukan';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'kurus';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'kamu memiliki berat badan diatas batas normal, ayo olahraga!!';
    } else if (_bmi > 18.5) {
      return 'kamu memiliki berat badan normal, kerja bagus!!';
    } else {
      return 'kamu memiliki berat badan di bawah batas normal, makan lebih banyak!!';
    }
  }
}
