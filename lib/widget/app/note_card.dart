import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/Extention/num.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/widget/app_text.dart';

class NoteCardView extends StatelessWidget {
  const NoteCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: AppText(
                  title: "title",
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  FontAwesomeIcons.trash,
                  color: AppColors.red,
                  size: 20.height,
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          AppText(
            title: "10:00pm",
            fontSize: 14,
          ),
          SizedBox(height: 8),
          AppText(
            title: "10/1/1993",
            fontSize: 14,
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.lightGrey),
    );
  }
}
