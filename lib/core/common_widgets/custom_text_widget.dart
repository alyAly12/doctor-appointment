
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
        required this.title,
        this.fontSize = 20,
        this.maxLines,
        this.color,
        this.fontWeight, this.textAlign, this.textDecoration});
  final String title;
  final double fontSize;
  final int? maxLines;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
          decoration: textDecoration,
          decorationColor: AppColors.mainColor,
          color: color,
          fontSize: fontSize,
          fontFamily: 'Roboto',
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis),
    );
  }
}
