import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_states.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';
import 'package:notes_app/widgets/form_add_buttom_sheet.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.only(left: 16 , right:  16 , bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteCubitStates>(
          listener: (context, state) {
            if (state is AddNotesFailer) {
              print(state.errorMsg.toString());
            }
            if (state is AddNotesSuccesfull) {
              BlocProvider.of<NotesCubit>(context).fetchAllData();
              Navigator.pop(context);
              print("successfully");
            }
          },
          builder: (context, state) {
            return AbsorbPointer(absorbing: state is AddNotesLoading ? true : false,child: const SingleChildScrollView(child: FormAddButtomSheet()));
          },
        ),
      ),
    );
  }
}
