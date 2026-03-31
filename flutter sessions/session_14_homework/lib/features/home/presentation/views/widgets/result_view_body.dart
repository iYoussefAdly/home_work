import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:session_14_homework/constants.dart';
import 'package:session_14_homework/core/utils/bmi_calculator.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/calculate_button.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.bmi});
  final BMICalculator bmi;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            "Your BMI Result",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: containersColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  bmi.getCategory(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  bmi.calculateBMI().toStringAsFixed(1),
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  bmi.getInterpretation(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: textsColor),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            onTap: () {
              GoRouter.of(context).pop();
            },
            text: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
