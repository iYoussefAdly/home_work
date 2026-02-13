import 'grade.dart';

void main() {
  Grade grade = Grade();
  print('Initial score: ${grade.score}, Pass: ${grade.isPass}');
  grade.score = 75;
  print('Updated score: ${grade.score}, Pass: ${grade.isPass}');
  grade.score = 45;
  print('Updated score: ${grade.score}, Pass: ${grade.isPass}');
  grade.score = 120;
  print('Final score: ${grade.score}, Pass: ${grade.isPass}');
}
