import 'package:notes_app/models/note_model.dart';

class NotesState {

}

class NotesInitial extends NotesState {

}

class NotesLoading extends NotesState {

}

class NotesSuccesfull extends NotesState {
  NotesSuccesfull(this.notes);
  final List<NoteModel> notes ;
}

class NotesFailer extends NotesState {
  NotesFailer({required this.errorMsg});
  final String errorMsg ;


}