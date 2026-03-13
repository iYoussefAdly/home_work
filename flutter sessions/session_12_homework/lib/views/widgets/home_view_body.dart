import 'package:flutter/material.dart';
import 'package:session_12_homework/views/widgets/fifth_section.dart';
import 'package:session_12_homework/views/widgets/first_section.dart';
import 'package:session_12_homework/views/widgets/fourth_section.dart';
import 'package:session_12_homework/views/widgets/second_section.dart';
import 'package:session_12_homework/views/widgets/the_last_container.dart';
import 'package:session_12_homework/views/widgets/third_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        children: [
          FirstSection(),
          SizedBox(
            height: 20,
          ),        
          SecondSection(),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1.5,
            color: Color(0xffD3D3D3),
          ),
          SizedBox(
            height: 20,
          ),
          ThirdSection(),
          SizedBox(
            height: 20,
          ),
          FourthSection(),
          SizedBox(
            height: 20,
          ),
          FifthSection(),
          SizedBox(
            height: 20,
          ),
          TheLastContainer()
        ],
      ),
    );
  }
}