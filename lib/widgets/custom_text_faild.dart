import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key , this.value = 1, required this.text});
  final int? value ;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 24),
      child: TextField(
        maxLines: value,
        cursorColor: KThirdColor ,
        decoration: InputDecoration(
        hintText: text,
        
        hintStyle: const TextStyle(color: KThirdColor),
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
            color: KSecondaryColor ,
          ),
        );
  }
}