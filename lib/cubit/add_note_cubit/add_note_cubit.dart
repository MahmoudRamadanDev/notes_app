import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart'; 
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteCubitStates> {

  AddNoteCubit() : super(InitialNotesState());
  
  addNotes (NoteModel note) async {

  emit(AddNotesLoading());
  try {

  var notesBox =  Hive.box<NoteModel>(kHiveBox);

  await notesBox.add(note);

  emit(AddNotesSuccesfull());

}  catch (e) {

  emit(AddNotesFailer(e.toString()));

}
  
  }
}