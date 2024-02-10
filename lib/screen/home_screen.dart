import 'package:calculator/constant/color.dart';
import 'package:calculator/widgets/Button.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 35);
    final decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: const Text("Calculator App")),
      ),
      body: Column(children: [
        CustomeTextField(),
        Spacer(),
        Container(
          height: screenHeight * 0.6,
          width: double.infinity,
          padding: padding,
          decoration: decoration,
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRow1(
                    label: "1",
                    textColor: AppColors.secondaryColor,
                  ),
                  ButtonRow1(
                    label: "2",
                    textColor: AppColors.secondaryColor,
                  ),
                  ButtonRow1(
                    label: "3",
                    textColor: AppColors.secondaryColor,
                  ),
                  ButtonRow1(
                    label: "4",
                    textColor: AppColors.secondaryColor,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRow1(
                    label: "1",
                  ),
                  ButtonRow1(
                    label: "2",
                  ),
                  ButtonRow1(
                    label: "3",
                  ),
                  ButtonRow1(
                    label: "4",
                    textColor: AppColors.secondaryColor,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRow1(
                    label: "1",
                  ),
                  ButtonRow1(
                    label: "2",
                  ),
                  ButtonRow1(
                    label: "3",
                  ),
                  ButtonRow1(
                    label: "4",
                    textColor: AppColors.secondaryColor,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRow1(
                    label: "1",
                  ),
                  ButtonRow1(
                    label: "2",
                  ),
                  ButtonRow1(
                    label: "3",
                  ),
                  ButtonRow1(
                    label: "4",
                    textColor: AppColors.secondaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
      //drawerEnableOpenDragGesture: false,
    );
  }
}
