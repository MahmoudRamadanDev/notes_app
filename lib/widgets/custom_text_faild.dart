import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({super.key , this.value , required this.text});
  final double? value ;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 24),
      child: TextField(
        cursorColor: KThirdColor ,
        decoration: InputDecoration(
        contentPadding:EdgeInsets.only(top:  value ?? 20 , bottom: value ?? 20 , right: value ?? 20 , left: 20),
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