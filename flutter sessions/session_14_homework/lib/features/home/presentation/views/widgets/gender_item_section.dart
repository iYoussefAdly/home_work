import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';
import 'package:session_14_homework/core/utils/bmi_calculator.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/custom_gender_item.dart';

class GenderItemSection extends StatefulWidget {
  const GenderItemSection({super.key, required this.onGenderChanged});
  final Function(Gender) onGenderChanged;
  @override
  State<GenderItemSection> createState() => _GenderItemSectionState();
}

class _GenderItemSectionState extends State<GenderItemSection> {
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomGenderItem(
            color: maleContainerColor,
            icon: Icons.male,
            text: "MALE",
            onTap: () {
              setState(() {
                isMaleSelected = true;
                widget.onGenderChanged(Gender.male);
              });
            },
            isSelected: isMaleSelected,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: CustomGenderItem(
            color: containersColor,
            icon: Icons.female,
            text: "FEMALE",
            onTap: () {
              setState(() {
                isMaleSelected = false;
                widget.onGenderChanged(Gender.female);
              });
            },
            isSelected: !isMaleSelected,
          ),
        ),
      ],
    );
  }
}
