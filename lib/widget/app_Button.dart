import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';


import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.onTap, required margin,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        alignment: Alignment.center,
        child: AppText(
          title: title,
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}