import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {
        required this.backGroundColor,
       required this.borderRadius,
       required this.textColor,
       required this.textName,
       required this.fontSize,
      super.key});
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String textName;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          textName,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900 ,fontSize:fontSize ),
        ),
      ),
    );
  }
}
