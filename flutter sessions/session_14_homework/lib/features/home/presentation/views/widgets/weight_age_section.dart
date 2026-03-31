import 'package:flutter/material.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/custom_value_card.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key, required this.onWeightAgeChange});
  final void Function({int? weightValue,int? ageValue}) onWeightAgeChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomValueCard(title: "Weight", value: 60, onWeightAgeChange:onWeightAgeChange, isWeight: true,)),
        SizedBox(width: 27),
        Expanded(child: CustomValueCard(title: "Age", value: 29, onWeightAgeChange:onWeightAgeChange, isWeight: false,)),
      ],
    );
  }
}
