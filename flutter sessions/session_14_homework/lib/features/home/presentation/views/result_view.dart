import 'package:flutter/material.dart';
import 'package:session_14_homework/core/utils/bmi_calculator.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/result_view_body.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmi});
  final BMICalculator bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResultViewBody(bmi: bmi,));
  }
}
