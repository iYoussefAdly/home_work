import 'package:flutter/material.dart';

class HeaderCardButton extends StatelessWidget {
  const HeaderCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff6439B1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
