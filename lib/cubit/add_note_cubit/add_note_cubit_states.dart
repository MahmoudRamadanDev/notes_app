class AddNoteCubitStates {

}
class InitialNotesState extends AddNoteCubitStates {}

class AddNotesLoading extends AddNoteCubitStates{}

class AddNotesFailer extends AddNoteCubitStates {
  String? errorMsg ;
  AddNotesFailer(this.errorMsg);
}
class AddNotesSuccesfull extends AddNoteCubitStates {

}
