import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/custom_container.dart';

class TheLastContainer extends StatelessWidget {
  const TheLastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: CustomContainer(color: Color(0xffD7D7D7)));
  }
}