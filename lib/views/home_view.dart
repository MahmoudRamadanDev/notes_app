import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes" , style: TextStyle(fontSize: 27),),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 52, 55, 56),
            borderRadius: BorderRadius.circular(10),
          ),padding: EdgeInsets.all(8),child: Icon(Icons.search , color: Colors.white,)),
        ],
      ),
      body: Center(child: Text("Hello"),),
    );
  }
}