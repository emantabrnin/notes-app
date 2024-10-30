import 'package:flutter/material.dart';
import 'package:noteapp/ui/constance.dart';

class CustomeTextField extends StatelessWidget {
   const CustomeTextField({super.key, required this.hinttext, this.maxLine =1,  this.onSaved});
final String hinttext ;
final int maxLine;
final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is requierd';
        }
      },
      maxLines: maxLine,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hinttext,
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:const BorderSide(
            color: kprimaryColor
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:const BorderSide(
            color: Colors.white
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.white
          )
        )
      ),
    );
  }
}