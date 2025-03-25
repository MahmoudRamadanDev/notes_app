

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit () : super (NotesInitial());

  fetchAllDate () async {
    emit(NotesLoading());
  try {

  var notesBox =  Hive.box<NoteModel>(kHiveBox);

  List<NoteModel> notes =  notesBox.values.toList();

  emit(NotesSuccesfull(notes));

}  catch (e) {

  emit(NotesFailer(errorMsg: e.toString()));

}
  }
}