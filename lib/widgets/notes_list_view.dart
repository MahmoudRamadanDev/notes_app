import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final  listOfColors = const [Colors.amber , Colors.red , Colors.blue , Colors.pinkAccent , Colors.deepPurple] ;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
              itemCount: 5,
              itemBuilder: (context , index) {
                return const CustomCard(color: Colors.amber);
              },
            );
  }
}