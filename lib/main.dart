// ignore: unused_import
import 'package:calculator/constant/color.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/screen/home_screen.dart';
// ignore: unused_import
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        //materialApp represent our app as widget
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const home_screen(),
      ),
    );
  }
}
