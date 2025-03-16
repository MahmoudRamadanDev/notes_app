import 'package:flutter/material.dart';

import '../views/notes_view.dart';
import 'custome_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text(
                  "Notes",
                  style: TextStyle(fontSize: 28),
                ),
                CustomeIconSearch(),
              ],
            );

          
        
    
  }
}