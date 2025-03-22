import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/bloc_observer.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main () async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await  Hive.openBox<NoteModel>(kHiveBox);
  Bloc.observer = BlocObservers();
  runApp(const NotesApp ());
}


class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins" ,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}

/*

  routes: {
        NotesView.id : (context) => NotesView(),
      },
      initialRoute: NotesView.id,

*/