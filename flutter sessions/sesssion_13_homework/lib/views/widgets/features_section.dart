import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/data/models%20UI/feature_item_model.dart';
import 'package:sesssion_13_homework/views/widgets/feature_item.dart';

class FeaturesView extends StatelessWidget {
  const FeaturesView({super.key});
  static final List<FeatureItemModel> items = [
    FeatureItemModel(
      icon: Icons.flash_on,
      title: "Fast Performance",
      subtitle: "Lightning fast app performance",
    ),
    FeatureItemModel(
      icon: Icons.security,
      title: "Secure",
      subtitle: "Your data is safe with us",
    ),
    FeatureItemModel(
      icon: Icons.palette,
      title: "Beautiful UI",
      subtitle: "Modern and clean design",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FeatureItem(item: e),
      )).toList(),
    );
  }
}
