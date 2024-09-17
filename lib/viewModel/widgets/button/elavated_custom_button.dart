import 'package:calculator1/res/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class ElavatedCustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final double height;
  final double width;
  final double marginTop;
  final Color backColor;

  const ElavatedCustomButton(
      {super.key,
      required this.onPress,
      required this.title,
      this.height = 50,
      this.width = 333,
      this.marginTop = 10,
      required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: marginTop),
        height: height,
        width: width,
        child: ElevatedButton(
          style:
              ButtonStyle(backgroundColor: WidgetStatePropertyAll(backColor)),
          onPressed: onPress,
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: AppColors.appBackgroundColor),
          ),
        ));
  }
}
