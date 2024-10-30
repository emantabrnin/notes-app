import 'package:flutter/material.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/ui/widget/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

    final noteModel note;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        }));
      },
      child: Container(
          padding: const EdgeInsets.only(bottom: 16,top: 16,left: 8,right: 8),
          decoration: BoxDecoration(
            color:const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(note.title,style:const TextStyle(color: Colors.black),),
                subtitle: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 20),),
                trailing: IconButton(
                  onPressed: (){
                    note.delete();
                  },
                  icon: const Icon(Icons.delete,color: Colors.black)),
              ),
               Text(note.date,style:const TextStyle(color: Colors.black))
            ],
          ),
      
      ),
    );
  }
}