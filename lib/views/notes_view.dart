import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/notes_body.dart';

import '../widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return const NotesBody();
  }
}




