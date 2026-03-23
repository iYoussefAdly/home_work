import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/views/widgets/custom_bottom_button_container.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomBottomButtonContainer(text: "Settings", color: Color(0xff2092EC))),
        SizedBox(width: 12),
        Expanded(child: CustomBottomButtonContainer(text: "Profile", color: Colors.orange))
      ],
    );
  }
}