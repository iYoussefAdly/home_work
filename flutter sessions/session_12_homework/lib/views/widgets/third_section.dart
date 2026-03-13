import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/custom_container.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(child: CustomContainer(color: Color(0xff9FCEA0), aspectRation: 5)),
                SizedBox(height: 5),
                Expanded(child: CustomContainer(color: Color(0xff9FCEA0), aspectRation: 5)),
              ],
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: CustomContainer(color: Color(0xffF5C47B), aspectRation: 0.5)),
                SizedBox(width: 5,),
                Expanded(child: CustomContainer(color: Color(0xffF5C47B), aspectRation: 0.5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
