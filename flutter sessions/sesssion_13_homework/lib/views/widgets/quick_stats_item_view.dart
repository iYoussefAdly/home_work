import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/views/widgets/quick_stats_item.dart';

class QuickStatsItemView extends StatelessWidget {
  const QuickStatsItemView({super.key});
  static List<QuickStatsItem> items = [
    QuickStatsItem(
      icon: Icons.people,
      iconColor: Color(0xff653DAB),
      number: "1,234",
      label: "Users",
    ),
    QuickStatsItem(
      icon: Icons.star,
      iconColor: Color(0xffF69003),
      number: "4.8",
      label: "Rating",
    ),
    QuickStatsItem(
      icon: Icons.show_chart,
      iconColor: Color(0xff4296C3),
      number: "98%",
      label: "Success",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index) => items[index])),
    );
  }
}
