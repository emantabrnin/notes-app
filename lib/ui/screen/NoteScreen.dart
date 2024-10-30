import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/note_cubit.dart';
import 'package:noteapp/ui/widget/AddNoteBottomSheet.dart';
import 'package:noteapp/ui/widget/note_list_view.dart';

import '../widget/custome_app_bar.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.add)),
        body: const SafeArea(
            child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 20),
            Expanded(child: NoteListView()),
          ],
        )),
      ),
    );
  }
}
