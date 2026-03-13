import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/custom_container.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          CustomContainer(color: Color(0xffD7D7D7), aspectRation: 1),
          SizedBox(width: 5),
          Expanded(
            child: CustomContainer(color: Color(0xffD7D7D7), aspectRation: 4),
          ),
        ],
      ),
    );
  }
}
