import 'package:calculator/constant/color.dart';
import 'package:flutter/material.dart';

class ButtonRow1 extends StatelessWidget {
  const ButtonRow1(
      {super.key, required this.label, this.textColor = Colors.white});
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.secondary2Color,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: AppColors.secondary2Color,
        radius: 38,
        child: Text(
          label,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w400, color: textColor),
        ),
      ),
    );
  }
}
