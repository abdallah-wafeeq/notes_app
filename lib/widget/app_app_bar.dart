import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/widget/app_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.trailing,
    this.leading,
  });

  final String? title;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null
          ? SizedBox()
          : AppText(
              title: title!,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
      leading: leading,
      actions: [
        if (trailing != null) trailing!,
      ],
      iconTheme: IconThemeData(
        size: 20,
        color: AppColors.black
      ),
      actionsIconTheme: IconThemeData(
          size: 20,
          color: AppColors.black
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
