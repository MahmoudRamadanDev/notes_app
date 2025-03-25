import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Padding(
          padding: EdgeInsets.only(top: 65, right: 24, left: 24),
          child: Column(
            children: [
              CustomAppBar(
                titleAppBar: "Notes",
                iconData: Icons.search,
              ),
              Expanded(
                child: NotesListView(),
              ),
            ],
          ),
        ),
        floatingActionButton:  FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteModalBottomSheet();
                });
          },
          child: Icon(Icons.add),
          backgroundColor: kThirdColor,
        ),
        );
  }
}
