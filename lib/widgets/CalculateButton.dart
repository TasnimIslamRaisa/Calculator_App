import 'package:calculator/constant/color.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final calculatorProvider = Provider.of<CalculatorProvider>(context);
    // final resultAsString = calculatorProvider.resultAvailable
    //     ? calculatorProvider.getResultAsString()
    //     : ''; // Display empty string if result is not available
    return InkWell(
      onTap: () {
        //TODO: onTap2
        Provider.of<CalculatorProvider>(context, listen: false).setvalue("=");
      },
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(
            "=",
            //Provider.of<CalculatorProvider>(context).getResultAsString(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
