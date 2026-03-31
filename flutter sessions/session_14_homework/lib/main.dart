import 'package:flutter/material.dart';
import 'package:session_14_homework/constants.dart';
import 'package:session_14_homework/core/utils/app_router.dart';
void main() {
  runApp(const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff04061C),),
        scaffoldBackgroundColor: backGroundColor
      ),
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
    );
  }
}
