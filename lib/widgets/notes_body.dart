import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/add_note_modal_sheet.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Padding(
        padding:  EdgeInsets.only(top: 65, right: 24, left: 24),
        child: Column (
          children: [
          CustomAppBar(titleAppBar: "Notes", iconData: Icons.search,),
          Expanded(
            child:  NotesListView(),
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return const AddNoteModalBottomSheet();
        });
      },child: Icon(Icons.add), backgroundColor: kThirdColor,)
    );
  }
}

