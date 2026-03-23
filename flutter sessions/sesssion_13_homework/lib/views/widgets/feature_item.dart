import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/data/models%20UI/feature_item_model.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key, required this.item});
  final FeatureItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.greenAccent, blurRadius: 10)],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: item.icon == Icons.palette
                  ? Color(0xffF6EBDE)
                  : Color(0xffE2EFF9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              item.icon,
              color: item.icon != Icons.palette
                  ? Colors.deepPurple
                  : Color(0xffFC9601),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(item.subtitle, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
