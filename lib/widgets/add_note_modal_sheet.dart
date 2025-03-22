import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_states.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';
import 'package:notes_app/widgets/form_add_buttom_sheet.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteCubitStates>(
          listener: (context, state) {
            if (state is AddNotesFailer) {
              print('Error Msg ${state.errorMsg}');
            }
            if (state is AddNotesSuccesfull) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(inAsyncCall: state is AddNotesLoading ? true : false,child: const FormAddButtomSheet());
          },
        ),
      ),
    );
  }
}
