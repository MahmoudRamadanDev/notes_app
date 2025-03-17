import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
          const  CustomTextField(text: "Title",),
          const  CustomTextField(value: 5, text: "Content",),
                CustomButton(textTow: "Add",),
          const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}