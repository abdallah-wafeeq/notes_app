import 'package:flutter/material.dart';
import 'package:notes_app/widget/app_Button.dart';
import 'package:notes_app/widget/app_text_field.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add Note"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: AppTextField(
          hint: "Enter notes here",
          label: "Note",
          maxLines: null,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(
            title: 'Add',
              onTap: () {}, margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
          ),
        ),
      ),
    );
  }
}
