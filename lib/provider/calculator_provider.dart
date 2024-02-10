import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  //setvalue funtion will enter data on button press
  setvalue(String value) {
    String s = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = s.substring(0, s.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += value;
    }
  }

  compute() {
    String text = compController.text;
    // compController.text = text.interpret().toString();
    // Interpret the text as a mathematical expression and convert the result to a double
    double result = text.interpret() as double;
    // Check if the result is an integer
    if (result % 1 == 0) {
      // If it's an integer, display it without the decimal part
      compController.text = result.toInt().toString();
    } else {
      // If it's not an integer, display it with the decimal part
      compController.text = result.toString();
    }
  }

  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
