import 'package:flutter/material.dart';
import 'package:sesssion_13_homework/views/widgets/header_card_button.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff7C5DB2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello! 👋",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Try your best to build this ui",
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 12),
          HeaderCardButton(),
        ],
      ),
    );
  }
}

