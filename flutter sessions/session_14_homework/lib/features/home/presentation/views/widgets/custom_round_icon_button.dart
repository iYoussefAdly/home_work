import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';

class CustomRoundIconButton extends StatelessWidget {
  const CustomRoundIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: incrementAndDecrementColor,
        ),
        child: Center(child: Icon(icon, size: 40)),
      ),
    );
  }
}
