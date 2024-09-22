import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/Extention/num.dart';
import 'package:notes_app/core/route_utils.dart';
import 'package:notes_app/core/utils/colors.dart';
import 'package:notes_app/views/note/view.dart';
import 'package:notes_app/widget/app/note_card.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notes App",
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.fromLTRB(16,16,16,114),
          itemCount: 20,
          itemBuilder: (context, index) {
           return NoteCardView();
          },
          separatorBuilder: (context, index) => SizedBox(height: 12.height,),
        ),
    floatingActionButton: FloatingActionButton(
    onPressed: () => RouteUtils.push(context,NoteView()),
      backgroundColor: AppColors.darkGrey,
      child: Icon(FontAwesomeIcons.plus,color: AppColors.white,),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
