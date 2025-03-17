import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
        const  CustomTextFaild(text: "Title",),
        const  CustomTextFaild(value: 60, text: "Content",),
              CustomButton(textTow: "Add",),
        ],
      ),
    );
  }
}