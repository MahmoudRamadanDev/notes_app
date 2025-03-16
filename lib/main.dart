import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main () {
  runApp(NotesApp ());
}


class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins" ,
        brightness: Brightness.dark,
      ) ,
      
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