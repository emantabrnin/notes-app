import 'package:flutter/material.dart';
import 'package:noteapp/ui/widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteViewBody()
        )
        );
  }
}