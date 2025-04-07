import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note ;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title , subTitle ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 65 , left: 24 , right: 24),
      child:  Column(
        children: [
          CustomAppBar(titleAppBar: "Edit Note" , iconData: Icons.check,onPressed: () {
          widget.note.title = title ?? widget.note.title  ;
          widget.note.subTitle = subTitle ?? widget.note.subTitle ;
          widget.note.save();
          BlocProvider.of<NotesCubit>(context).fetchAllData();
          Navigator.pop(context);
        },),
        const  SizedBox(height: 30,),
          CustomTextField(text: widget.note.title ,onChanged: (value) {
            title = value ;
          },),
          CustomTextField(text: widget.note.subTitle , value: 5 ,onChanged: (value) {
            subTitle = value ;
          },),
        ],
      ),
    );
  }
}