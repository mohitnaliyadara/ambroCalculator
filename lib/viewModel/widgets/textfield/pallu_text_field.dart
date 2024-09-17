import 'package:calculator1/res/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class PalluTextFiled extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final double marginTop;
  final TextEditingController controller;

  const PalluTextFiled(
      {super.key,
      required this.title,
      this.height = 50,
      this.width = 160,
      this.marginTop = 30,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: marginTop),
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.end,
        cursorColor: AppColors.textFieldCursorColor,
        cursorHeight: 22,
        controller: controller,
        decoration: InputDecoration(
          prefix: const Text('\u{20B9}'),
          prefixStyle:
              TextStyle(fontSize: 18, color: AppColors.textFieldLableColor),
          labelText: title,
          labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.textFieldLableColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                BorderSide(color: AppColors.textFieldBorderColor, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.textFiledFocusColor),
          ),
        ),
      ),
    );
  }
}
