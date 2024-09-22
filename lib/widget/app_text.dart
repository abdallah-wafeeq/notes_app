import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required this.title,
    this.fontWeight,
    this.fontSize = 14,
    this.color = AppColors.black,
    this.decoration,
    this.onTap,
    this.height,
    this.textAlign,
  }) : super(key: key);

  final String title;
  final FontWeight? fontWeight;
  final double fontSize;
  final double? height;
  final Color color;
  final TextDecoration? decoration;
  final void Function()? onTap;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        textAlign: textAlign,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          decoration: decoration,
          height: height != null? height! / fontSize: null,

        ),
      ),
    );
  }
}