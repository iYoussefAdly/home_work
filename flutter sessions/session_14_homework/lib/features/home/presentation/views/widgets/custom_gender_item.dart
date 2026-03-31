import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';

class CustomGenderItem extends StatelessWidget {
   const CustomGenderItem({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });
  final Color color;
  final IconData icon;
  final String text;
  final void Function() onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.transparent,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 85),
                SizedBox(height: 10),
                Text(text, style: TextStyle(color: textsColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
