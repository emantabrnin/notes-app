import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/SimpleBlocObserver.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/ui/constance.dart';
import 'package:noteapp/ui/screen/NoteScreen.dart';

void main() async{
  await Hive.initFlutter();
    Bloc.observer = SimpleBlocObserver();
    Hive.registerAdapter(noteModelAdapter());
  await Hive.openBox<noteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: NoteScreen(),
    );
  }
}
