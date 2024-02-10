import 'package:calculator/constant/color.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColors.primaryColor,
          filled: true,
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        cursorRadius: Radius.circular(100),
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
