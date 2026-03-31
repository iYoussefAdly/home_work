import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.text});
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        decoration: BoxDecoration(color: bottomColor),
        child: Center(child: Text(text, style: TextStyle(fontSize: 26))),
      ),
    );
  }
}
