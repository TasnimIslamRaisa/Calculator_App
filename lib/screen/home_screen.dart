import 'package:calculator/constant/color.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/screen/widgetsButton.dart';
// ignore: unused_import
import 'package:calculator/widgets/Button.dart';
import 'package:calculator/widgets/CalculateButton.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home_screen extends StatelessWidget {
  const home_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 35);
    final decoration = BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return Consumer<CalculatorProvider>(builder: (context, Provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: const Text("Calculator App")),
        ),
        body: Column(
          children: [
            CustomeTextField(
              controller: Provider.compController,
            ),
            Spacer(),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  Row(children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                3, (index) => buttonList[index + 12]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                3, (index) => buttonList[index + 15]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CalculateButton(),
                  ]),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
