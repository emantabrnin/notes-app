import 'package:flutter/material.dart';
import 'package:noteapp/ui/widget/custome_button.dart';

import 'CustomeTextField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomeTextField(hinttext: 'Text'),
          SizedBox(height: 10,),
           CustomeTextField(hinttext: 'Contant',maxLine: 10),
           SizedBox(height: 25,),
           CustomeButton(),
           SizedBox(height: 10,),
        ],
      ),
    );
  }
}