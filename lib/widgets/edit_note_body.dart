import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 65 , left: 24 , right: 24),
      child:  Column(
        children: [
          CustomAppBar(titleAppBar: "Edit Note" , iconData: Icons.check,),
          SizedBox(height: 30,),
          CustomTextField(text: 'Title'),
          CustomTextField(text: 'Content' , value: 5,),
        ],
      ),
    );
  }
}