import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/edit_note_view.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({super.key , this.color});
  final Color? color ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView() ;
        }));
      },
      child: Container(
              padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 24),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text("Flutter Tips" , style: TextStyle(fontSize: 28 , color: kPrimaryColor)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text("Build Your Carerr With Tharwat Samy" , style: TextStyle(fontSize: 18 , color: kPrimaryColor.withOpacity(.5))),
                    ),
                    trailing:  IconButton(padding: const EdgeInsets.only(right: 24 , bottom: 24) ,onPressed: () {}, icon: const Icon(Icons.delete ,size: 35, color: kPrimaryColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24 , top: 24),
                    child: Text("${DateFormat('MMMM').format(DateTime(0, DateTime.now().month))} ${DateTime.now().day},${DateTime.now().year}" , style: TextStyle(fontSize: 16 ,color: kPrimaryColor.withOpacity(.5)),),
                  ),
                ],
              ),
            ),
    );
  }
}
