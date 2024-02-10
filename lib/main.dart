import 'package:calculator/constant/color.dart';
import 'package:calculator/screen/home_screen.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //materialApp represent our app as widget
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const home_screen(),
    );
  }
}
