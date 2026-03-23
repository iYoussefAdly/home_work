import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/views/widgets/quick_stats_item_view.dart';

class QuickStatesSection extends StatelessWidget {
  const QuickStatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Quick Stats", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: QuickStatsItemView(),
        )
      ],
    );
  }
}