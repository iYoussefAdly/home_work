import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key, required this.onHeightChanged});
  final void Function(int) onHeightChanged;
  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double height = 174;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 15),
      decoration: BoxDecoration(
        color: containersColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Height", style: TextStyle(color: textsColor)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: height.toInt().toString(),
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "cm",
                    style: TextStyle(color: textsColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Slider(
              inactiveColor: textsColor,
              activeColor: Colors.white,
              thumbColor: Colors.red,
              value: height,
              min: 100,
              max: 220,
              onChanged: (value) {
                setState(() {
                  height = value;
                  widget.onHeightChanged(value.toInt());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
