enum Gender { male, female }

class BMICalculator {
  final int height;
  final int weight;
  final int age;
  final Gender gender;

  BMICalculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });

  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }

  String getCategory() {
    double bmi = calculateBMI();

    if (bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi < 25) {
      return 'NORMAL';
    } else if (bmi < 30) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  String getInterpretation() {
    double bmi = calculateBMI();

    if (bmi < 18.5) {
      return 'You have a lower body weight than normal. You may need to eat more.';
    } else if (bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else if (bmi < 30) {
      return 'You have a higher body weight than normal. You may need to exercise more.';
    } else {
      return 'You have an obese body weight. Please consult with a doctor.';
    }
  }
}