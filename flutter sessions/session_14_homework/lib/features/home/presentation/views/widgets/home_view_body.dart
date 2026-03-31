import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:session_14_homework/core/utils/app_router.dart';
import 'package:session_14_homework/core/utils/bmi_calculator.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/calculate_button.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/gender_item_section.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/height_section.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/weight_age_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int height = 170;
  int weight = 70;
  int age = 20;
  Gender gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                Expanded(
                  child: GenderItemSection(
                    onGenderChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 32),
                Expanded(
                  child: HeightSection(
                    onHeightChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 32),
                Expanded(
                  child: WeightAgeSection(
                    onWeightAgeChange: ({int? ageValue, int? weightValue}) {
                      setState(() {
                        if (ageValue != null) age = ageValue;
                        if (weightValue != null) weight = weightValue;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        CustomButton(
          onTap: () {
            final bmi = BMICalculator(
              height: height,
              weight: weight,
              age: age,
              gender: gender,
            );
            GoRouter.of(context).push(AppRouter.kResultView,extra: bmi);
          },
          text: "CALCULATE",
        ),
      ],
    );
  }
}
