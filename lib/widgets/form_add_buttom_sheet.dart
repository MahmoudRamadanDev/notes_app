import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class FormAddButtomSheet extends StatefulWidget {
  const FormAddButtomSheet({
    super.key,
  });

  @override
  State<FormAddButtomSheet> createState() => _FormAddButtomSheetState();
}

class _FormAddButtomSheetState extends State<FormAddButtomSheet> {

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle ;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(text: "Title", onSaved: (value) {
          title = value ;
        },),
          CustomTextField(value: 5, text: "Content",onSaved: (value) {
          subTitle = value ;
        },),
        CustomButton(textTow: "Add", onTap: () {
          
          if (formKey.currentState!.validate()) {

          formKey.currentState!.save();

          var noteModel = NoteModel(title: title!, subTitle: subTitle!, color: Colors.blue.value, date: DateTime.now().toString());

          BlocProvider.of<AddNoteCubit>(context).addNotes(noteModel);

          }else {
            autovalidateMode = AutovalidateMode.always;
            setState(() {});
          }
        },),
        const SizedBox(height: 20,),
        ],
      ),
    );
  }
}