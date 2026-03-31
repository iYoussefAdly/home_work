import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';
import 'package:session_14_homework/features/home/presentation/views/widgets/custom_round_icon_button.dart';

class CustomValueCard extends StatefulWidget {
  const CustomValueCard({
    super.key,
    required this.title,
    required this.value,
    required this.onWeightAgeChange,
    required this.isWeight,
  });
  final String title;
  final double value;
  final void Function({int? weightValue, int? ageValue}) onWeightAgeChange;
  final bool isWeight;
  @override
  State<CustomValueCard> createState() => _CustomValueCardState();
}

class _CustomValueCardState extends State<CustomValueCard> {
  late double value;

  @override
  void initState() {
    super.initState();
    value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: containersColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.title, style: TextStyle(color: textsColor)),
              Text(
                value.toInt().toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomRoundIconButton(
                    icon: Icons.remove,
                    onTap: () {
                      setState(() {
                        value--;
                        if (widget.isWeight) {
                          widget.onWeightAgeChange(weightValue: value.toInt());
                        } else {
                          widget.onWeightAgeChange(ageValue: value.toInt());
                        }
                      });
                    },
                  ),
                  SizedBox(width: 15),
                  CustomRoundIconButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() {
                        value++;
                        if (widget.isWeight) {
                          widget.onWeightAgeChange(weightValue: value.toInt());
                        } else {
                          widget.onWeightAgeChange(ageValue: value.toInt());
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
