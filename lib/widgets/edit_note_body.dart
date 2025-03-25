import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 65 , left: 24 , right: 24),
      child:  Column(
        children: [
        const  CustomAppBar(titleAppBar: "Edit Note" , iconData: Icons.check,),
        const  SizedBox(height: 30,),
          CustomTextField(text: note.title ,),
          CustomTextField(text: note.subTitle , value: 5),
        ],
      ),
    );
  }
}