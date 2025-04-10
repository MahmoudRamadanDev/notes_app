import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubit/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>( 
      builder: (context, state) {
        if (state is NotesSuccesfull) {
          
        }
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [] ;
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  CustomCard(color: Colors.amber , note: notes[index],);
            },
          ),
        );
      },
    );
  }
}
