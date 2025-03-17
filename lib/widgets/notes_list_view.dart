import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final  listOfColors = const [Colors.amber , Colors.red , Colors.blue , Colors.pinkAccent , Colors.deepPurple] ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context , index) {
                  return const CustomCard(color: Colors.amber);
                },
              ),
    );
  }
}