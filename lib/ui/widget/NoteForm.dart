import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/ui/widget/CustomeTextField.dart';
import 'package:noteapp/ui/widget/custome_button.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode =  AutovalidateMode.disabled;
    String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child:  Padding(
        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
           const SizedBox(height: 30),
            CustomeTextField(hinttext: 'Text',onSaved: (value){
              title =value;
            }),
           const SizedBox(height: 10,),
             CustomeTextField(hinttext: 'Contant',maxLine: 5,onSaved: (value){
              subTitle =value;
            }),
            const SizedBox(height: 25,),
             CustomeButton(
              onTap: (){
                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();
                  var note =noteModel(title!, subTitle!, DateTime.now().toString(), Colors.black.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                }else{
                 autovalidateMode= AutovalidateMode.always;
                 setState(() {
                   
                 });
                }
              },
             ),
             const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}