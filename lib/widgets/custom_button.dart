import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.textTow ,  this.onTap,  this.isLoading = false});
  final String textTow ;
  VoidCallback? onTap ;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 50),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
                  decoration: BoxDecoration(
                    color: kThirdColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector( onTap: onTap , child: Center(
                    child: isLoading ? const SizedBox(width: 24 , height: 24,child: CircularProgressIndicator(color: Colors.black)) : Text(textTow ,style: TextStyle(fontSize: 20 , color: Colors.black),))),
                ),
      ),
    );
  }
}