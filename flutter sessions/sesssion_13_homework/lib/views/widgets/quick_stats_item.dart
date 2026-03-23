import 'package:flutter/material.dart';

class QuickStatsItem extends StatelessWidget {
  const QuickStatsItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.number,
    required this.label,
  });
  final IconData icon;
  final Color iconColor;
  final String number;
  final String label;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor),
            SizedBox(height: 8),
            Text(number, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(label, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
