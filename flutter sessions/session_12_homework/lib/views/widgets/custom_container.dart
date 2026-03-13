import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.color, this.aspectRation});
  final Color color;
  final double? aspectRation;
  @override
  Widget build(BuildContext context) {
    return aspectRation != null
        ? AspectRatio(
            aspectRatio: aspectRation!,
            child: Container(decoration: BoxDecoration(color: color)),
          )
        : Container(decoration: BoxDecoration(color: color));
  }
}
