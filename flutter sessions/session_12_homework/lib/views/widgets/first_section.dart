import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/custom_container.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(color: Color(0xffDBE9F3), aspectRation: 2);
  }
}