import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/views/widgets/bottom_buttons.dart';
import 'package:sesssion_13_homework/views/widgets/features_section.dart';
import 'package:sesssion_13_homework/views/widgets/header_card.dart';
import 'package:sesssion_13_homework/views/widgets/quick_states_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
  slivers: [
    SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      sliver: SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: HeaderCard(),
            ),
            SizedBox(height: 20),
            QuickStatesSection(),
            SizedBox(height: 20),
            Text(
              "Features",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            FeaturesView(),
            Spacer(), // ✅ بدل Expanded + SizedBox
            BottomButtons(),
          ],
        ),
      ),
    ),
  ],
);
  }
}
