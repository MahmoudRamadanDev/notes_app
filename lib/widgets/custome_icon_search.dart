import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeIconSearch extends StatelessWidget {
  const CustomeIconSearch({super.key, required this.icons, this.onPressed});
  final IconData icons ;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return  Container(
              width: 45,
              height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 55, 56),
                  borderRadius: BorderRadius.circular(16),
                ),
                child:  Center(
                  child:  IconButton(
                        icon: Icon(icons , size: 28,),
                        color: kSecondaryColor,
                      onPressed: onPressed,
                      ),
                ),
                    );
  }
}