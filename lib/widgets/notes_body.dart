import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_card.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(top: 50, right: 24, left: 24),
        child: Column (
          // mainAxisSize: MainAxisSize.min,
          children: [
          CustomAppBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context , index) {
                return CustomCard(color: Colors.amber);
              },
            ),
          ),
          ],
        ),
      )
    );;
  }
}