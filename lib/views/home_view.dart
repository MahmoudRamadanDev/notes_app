import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
        padding:  EdgeInsets.only(top: 50, right: 24, left: 24),
        child: Column(
          children: [
          CustomAppBar(),
          ],
        ),
      )
    );
  }
}




