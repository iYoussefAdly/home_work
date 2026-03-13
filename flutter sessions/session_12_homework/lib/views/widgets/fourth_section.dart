import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/custom_container.dart';

class FourthSection extends StatelessWidget {
  const FourthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(flex: 16, child: CustomContainer(color: Color(0xffD8B7DF))),
          Expanded(flex: 2, child: CustomContainer(color: Color(0xffEADBEC))),
          Expanded(
            flex: 16,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: CustomContainer(color: Color(0xffC78DD0)),
                ),
                Expanded(
                  flex: 1,
                  child: CustomContainer(color: Color(0xffD8B7DF)),
                ),
                Expanded(
                  flex: 4,
                  child: CustomContainer(color: Color(0xffC78DD0)),
                ),
              ],
            ),
          ),
          Expanded(flex: 2, child: CustomContainer(color: Color(0xffEADBEC))),
          Expanded(flex: 16, child: CustomContainer(color: Color(0xffD8B7DF))),
          Expanded(flex: 16, child: CustomContainer(color: Color(0xffE9DCEC))),
        ],
      ),
    );
  }
}
