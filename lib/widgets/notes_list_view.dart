import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.builder(
          padding: EdgeInsets.zero,
                itemBuilder: (context , index) {
                  return const CustomCard(color: Colors.amber);
                },
              ),
    );
  }
}