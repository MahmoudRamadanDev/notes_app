import 'package:flutter/material.dart';
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
          print("success");
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