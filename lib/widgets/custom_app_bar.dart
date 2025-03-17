import 'package:flutter/material.dart';

import '../views/notes_view.dart';
import 'custome_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar ({super.key , required this.titleAppBar , required this.iconData});
  final String titleAppBar ;
  final IconData iconData ;
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text(
                  titleAppBar,
                  style: const TextStyle(fontSize: 28),
                ),
                CustomeIconSearch(icons: iconData,),
              ],
            );

          
        
    
  }
}