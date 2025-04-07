import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key , this.value = 1, required this.text , this.onSaved, this.onChanged});
  final int? value ;
  final String text ;
  final  void Function(String?)? onSaved ;
  final void Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 24),
      child: TextFormField( 
        onChanged: onChanged ,
        onSaved: onSaved ,
        validator: (value) {
          if (!RegExp(r'^(?!\s*$).+').hasMatch(value!)) {
            return "This Field Is Required And Type Your Notes";
          }else {
            return null ;
          }
        },
        maxLines: value,
        cursorColor: kThirdColor ,
        decoration: InputDecoration(
        hintText: text,
        
        hintStyle: const TextStyle(color: kThirdColor),
        enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kSecondaryColor ,
          ),
        );
  }
}